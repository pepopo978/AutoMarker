
-- Utility -------------------

local COLOR_WHITE = "|cffffffff"
local COLOR_RED = "|cffff0000"
local COLOR_GREEN = "|cff00ff00"
local COLOR_BLUE = "|cff0000ff"
local COLOR_YELLOW = "|cffffff00"
local COLOR_CYAN = "|cff00ffff"
local COLOR_MAGENTA = "|cffff00ff"
local COLOR_GREY = "|cff808080"
local COLOR_ORANGE = "|cffff8000"
local COLOR_PURPLE = "|cffff00ff"
local COLOR_END = "|r"

if not SetAutoloot then
  DEFAULT_CHAT_FRAME:AddMessage(COLOR_YELLOW .. "AutoMarker" .. COLOR_RED .. " requires SuperWoW to operate.");
  return
end

local function auto_print(msg)
  DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local function tsize(t)
  local c = 0
  for _ in pairs(t) do c = c + 1 end
  return c
end

local function sortTableByKey(tbl)
  local sortedKeys = {}
  for key in pairs(tbl) do
      table.insert(sortedKeys, key)
  end
  table.sort(sortedKeys)

  local sortedTable = {}
  for _, key in ipairs(sortedKeys) do
      sortedTable[key] = tbl[key]
  end
  return sortedTable
end

--[[[
This lines up the mob tables and the update table and picks out what's newer:
Say we have
  ["spider_anubrekhan"] = {
    ["0x101"] = 6, -- spider 1
    ["0x102"] = 7, -- spider 2
    ["0x10"] = 8, -- anub
  },
And
  update = {
    ["0x105"] = 6, -- spider 1
    ["0x106"] = 7, -- spider 2
  },
We get
  updated = {
    ["0x105"] = 6, -- spider 1
    ["0x106"] = 7, -- spider 2
    ["0x10"] = 8, -- anub
  },
--]]
local function sortAndReplaceKeys(defaultTable, updateTable)
  local keys = {}
  for key in pairs(defaultTable) do
      table.insert(keys, key)
  end
  table.sort(keys, function(a, b) return a > b end)

  local values = {}
  for _, value in pairs(updateTable) do
      table.insert(values, value)
  end
  table.sort(values, function(a, b) return a > b end)

  local updatedTable = {}
  local i = 1

  for _, key in ipairs(keys) do
      if values[i] then
          updatedTable[values[i]] = defaultTable[key]
          i = i + 1
      else
          updatedTable[key] = defaultTable[key]
      end
  end

  return updatedTable
end

-- Addon ---------------------

local autoMarkerFrame = CreateFrame("Frame")
autoMarkerFrame:RegisterEvent("ADDON_LOADED")
autoMarkerFrame:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
autoMarkerFrame:RegisterEvent("UNIT_MODEL_CHANGED") -- mob respawn

local function guidToPack(id, zone)
  if not npcsToMark or not npcsToMark[zone] then
    return
  end
  for packName, packInfo in pairs(npcsToMark[zone]) do
    for guid, _ in pairs(packInfo) do
      if guid==id then
        return packName, npcsToMark[zone][packName]
      end
    end
  end
end

local function PlayerCanMark()
  for i = 1, GetNumRaidMembers() do
    local name, rank = GetRaidRosterInfo(i)
    if name==UnitName("player") then
      return rank>0
    end
  end
  return UnitIsPartyLeader("player") or false
end

local function OnMouseover()
  if IsShiftKeyDown() and (IsControlKeyDown() or IsAltKeyDown()) then
    local _, targetGuid = UnitExists("mouseover")
    if targetGuid and not UnitIsDead(targetGuid) and PlayerCanMark() then
      local _, packMobs = guidToPack(targetGuid, GetRealZoneText())
      for mob, mark in pairs(packMobs or {}) do
        SetRaidTarget(mob, mark)
      end
    end
  end
end

-- when certain bosses reset so do their adds, but they come back in the same order with new id's
local temporary_mobs = {
  ["Deathknight Understudy"] = {
      minCount = 4,
      pack = "military_razuvious",
      raid = "Naxxramas",
      queue = {},
  },
  ["Crypt Guard"] = {
      minCount = 2,
      pack = "spider_anubrekhan",
      raid = "Naxxramas",
      queue = {},
  }
}
-- so we'll order them and assigned them ordered source marks
local elapsed = 0
function UpdateRespawns()
  elapsed = elapsed + arg1
  if elapsed > 0.25 then -- no sense checking tables every single frame
    elapsed = 0
    for mob, config in pairs(temporary_mobs) do
      if tsize(config.queue) >= config.minCount then
        npcsToMark[config.raid][config.pack] = 
          sortAndReplaceKeys(defaultNpcsToMark[config.raid][config.pack], config.queue)
        config.queue = {}
        autoMarkerFrame:SetScript("OnUpdate", nil)
      end
    end
  end
end

-- Event handler
autoMarkerFrame:SetScript("OnEvent", function()
  if event=="ADDON_LOADED" and arg1=="AutoMarker" then
    if not npcsToMark then
      npcsToMark = defaultNpcsToMark
    else
      -- add any new mobs from the default
      for raid_name,packs in pairs(defaultNpcsToMark) do
        if not npcsToMark[raid_name] then npcsToMark[raid_name] = {} end
        for pack_name,pack in pairs(packs) do
          if not npcsToMark[raid_name][pack_name] then
            npcsToMark[raid_name][pack_name] = defaultNpcsToMark[raid_name][pack_name]
            -- don't go deeper, you'll overwrite people's groups
          end
        end
      end
    end
    auto_print(COLOR_YELLOW.."AutoMarker loaded."..COLOR_END.." Type /am to see commands.")
  elseif event=="UPDATE_MOUSEOVER_UNIT" then
    OnMouseover()
  elseif event=="UNIT_MODEL_CHANGED" then
    -- Certain mobs in Naxx are script spawned so their IDs need to be fetched
    local name = UnitName(arg1)
    if temporary_mobs[name] then
      table.insert(temporary_mobs[name].queue, arg1)
      autoMarkerFrame:SetScript("OnUpdate", UpdateRespawns)
    end
  end
end)

local currentPackName = nil
local function handleCommands(msg, editbox)
  local args = {}
  for word in string.gfind(msg, '%S+') do
    table.insert(args, word)
  end

  local command, packName = args[1], args[2]
  local force_add = command == "forceadd"
  local zoneName = GetRealZoneText()
  local function getGuid()
    local _, guid = UnitExists("mouseover")
    if not guid then
      _, guid = UnitExists("target")
    end
    return guid
  end

  if command == "set" or command == "s" then
    if not packName then
      auto_print("You must provide a pack name as well when using set.")
      return
    end
    currentPackName = packName
    auto_print("Packname set to: " .. currentPackName)
  elseif command == "get" or command == "g" then
    auto_print("Packname set to: " .. tostring(currentPackName))
    local guid = getGuid()
    if guid then
      local packName = guidToPack(guid, zoneName)
      auto_print("Mob " .. UnitName(guid) .. " is in pack: " .. (packName or "not in any pack."))
    end
  elseif command == "clear" or command == "c" then
    if npcsToMark[zoneName] then
      npcsToMark[zoneName][currentPackName] = nil
    end
    auto_print("Mobs in " .. currentPackName .. " have been cleared.")
  elseif command == "remove" or command == "r" then
    local guid = getGuid()
    if not guid then
      auto_print("Must mouseover a mob or target a mob to remove it from its pack.")
      return
    end
    local packName = guidToPack(guid, zoneName)
    if not packName then
      auto_print("Mob not in any pack.")
      return
    end
    auto_print("Removing mob " .. UnitName(guid) .. " from pack: " .. packName)
    npcsToMark[zoneName][packName][guid] = nil
  elseif command == "add" or command == "a" or force_add then
    if not currentPackName then
      auto_print("Must set packname before adding to pack.")
      return
    end
    local guid = getGuid()
    if not guid then
      auto_print("Must mouseover a mob or target a mob to add to current pack.")
      return
    end
    local packName = guidToPack(guid, zoneName)
    if packName and not force_add then
      auto_print("Mob already added to pack " .. packName .. ". use /am forceadd")
      return
    end
    local raidMarks = {"Unmarked", "Star", "Circle", "Diamond", "Triangle", "Moon", "Square", "Cross", "Skull"}
    local unitName, raidmark = UnitName(guid), GetRaidTargetIndex(guid) or 0
    auto_print("Adding " .. unitName .. "(" .. guid .. ") to pack: " .. currentPackName .. " with mark: " .. raidMarks[raidmark + 1] .. " in zone: " .. zoneName)
    npcsToMark[zoneName] = npcsToMark[zoneName] or {}
    npcsToMark[zoneName][currentPackName] = npcsToMark[zoneName][currentPackName] or {}
    npcsToMark[zoneName][currentPackName][guid] = raidmark
  else
    auto_print("Commands: /am set <packname>, /am get, /am clear, /am add, /am remove. Can also do first letter of each command like /am s or /am g.")
  end
end

SLASH_AUTOMARKER1 = "/automarker";
SLASH_AUTOMARKER2 = "/am";
SlashCmdList["AUTOMARKER"] = handleCommands
