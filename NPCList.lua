local SKULL    = 8
local CROSS    = 7
local SQUARE   = 6
local MOON     = 5
local TRIANGLE = 4
local DIAMOND  = 3
local CIRCLE   = 2
local STAR     = 1
local UNMARKED = 0

defaultNpcsToMark = {};
defaultNpcsToMark["Naxxramas"] = {}

--/////////////// SPIDER ///////////////

defaultNpcsToMark["Naxxramas"]["spider_entrance_patrol"] = {
	["0xF130003E69049DD3"]  = STAR; -- Infectious Skitterer
	["0xF130003E69049DCE"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DCD"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DD0"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DD1"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DD2"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DCC"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DCF"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D9F"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DA9"]  = UNMARKED; -- Infectious Skitterer
}

defaultNpcsToMark["Naxxramas"]["spider_entrance_right"] = {
	["0xF130003E680158F6"]  = SKULL; -- Venom Stalker
	["0xF130003E6601590E"]  = CROSS; -- Dread Creeper
	["0xF130003E6601590F"]  = SQUARE; -- Dread Creeper
	["0xF130003E670158F4"]  = MOON; -- Carrion Spinner
	["0xF130003E670158F5"]  = TRIANGLE; -- Carrion Spinner
	["0xF130003E670158F3"]  = DIAMOND; -- Carrion Spinner
}

defaultNpcsToMark["Naxxramas"]["spider_entrance_left"] = {
	["0xF130003E680158F7"]  = SKULL; -- Venom Stalker
	["0xF130003E66015911"]  = CROSS; -- Dread Creeper
	["0xF130003E66015910"]  = SQUARE; -- Dread Creeper
	["0xF130003E670158F9"]  = MOON; -- Carrion Spinner
	["0xF130003E670158FA"]  = TRIANGLE; -- Carrion Spinner
	["0xF130003E670158F8"]  = DIAMOND; -- Carrion Spinner
}

defaultNpcsToMark["Naxxramas"]["spider_anubrekhan_hallway"] = {
	["0xF130003E68015917"]  = SKULL; -- Venom Stalker
	["0xF130003E66015912"]  = CROSS; -- Dread Creeper
	["0xF130003E66015913"]  = SQUARE; -- Dread Creeper
	["0xF130003E67015914"]  = MOON; -- Carrion Spinner
	["0xF130003E67015915"]  = TRIANGLE; -- Carrion Spinner
	["0xF130003E67015916"]  = DIAMOND; -- Carrion Spinner
}

defaultNpcsToMark["Naxxramas"]["spider_anubrekhan"] = {
	["0xF130003E5401591A"]  = SKULL; -- Anub'Rekhan
	["0xF1300040BD04B2DF"]  = CROSS; -- Crypt Guard
	["0xF1300040BD04B2DE"]  = SQUARE; -- Crypt Guard
}

defaultNpcsToMark["Naxxramas"]["spider_central_right"] = {
	["0xF130003E6A0159DF"]  = SKULL; -- Crypt Reaver
	["0xF130003E67049DC4"]  = CROSS; -- Carrion Spinner
	["0xF130003E67049DC5"]  = SQUARE; -- Carrion Spinner
	["0xF130003E670159F3"]  = MOON; -- Carrion Spinner
	["0xF130003E67049DC7"]  = TRIANGLE; -- Carrion Spinner
	["0xF130003E67049DC6"]  = DIAMOND; -- Carrion Spinner
	["0xF130003E670159F4"]  = CIRCLE; -- Carrion Spinner
}

defaultNpcsToMark["Naxxramas"]["spider_central_patrol"] = {
	["0xF130003E69049DAD"]  = STAR; -- Infectious Skitterer
	["0xF130003E69049DAC"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DAB"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DAA"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DA8"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DA7"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DA6"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049DA5"]  = UNMARKED; -- Infectious Skitterer
}

defaultNpcsToMark["Naxxramas"]["spider_necro_1"] = {
	["0xF130004045015A20"]  = SKULL; -- Necro Stalker
	["0xF130004045015A1F"]  = CROSS; -- Necro Stalker
}

defaultNpcsToMark["Naxxramas"]["spider_necro_2"] = {
	["0xF130004045049DBE"]  = SKULL; -- Necro Stalker
	["0xF130004045049DBF"]  = CROSS; -- Necro Stalker
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_patrol"] = {
	["0xF130003E69049D6A"]  = STAR; -- Infectious Skitterer
	["0xF130003E69049D6B"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D6C"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D69"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D68"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D67"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D66"]  = UNMARKED; -- Infectious Skitterer
	["0xF130003E69049D65"]  = UNMARKED; -- Infectious Skitterer
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_left_1"] = {
	["0xF130003E6D049D6E"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D6F"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D71"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D73"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D70"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D6D"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D72"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D74"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_left_2"] = {
	["0xF130003E6D049D99"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D97"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D95"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D9B"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D98"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D96"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D9C"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D9A"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_left_3"] = {
	["0xF130003E6D049D90"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D92"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D94"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D8D"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D8E"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D8F"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D93"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D91"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_right_1"] = {
	["0xF130003E6D049D75"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D78"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D7C"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D7A"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D77"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D76"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D7B"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D79"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_right_2"] = {
	["0xF130003E6D049D7E"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D84"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D82"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D80"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D7F"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D83"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D7D"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D81"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina_right_3"] = {
	["0xF130003E6D049D85"]  = SKULL; -- Naxxramas Acolyte
	["0xF130003E6D049D87"]  = CROSS; -- Naxxramas Acolyte
	["0xF130003E6D049D89"]  = SQUARE; -- Naxxramas Acolyte
	["0xF130003E6D049D8B"]  = MOON; -- Naxxramas Acolyte
	["0xF130003E6C049D88"]  = TRIANGLE; -- Naxxramas Cultist
	["0xF130003E6C049D86"]  = DIAMOND; -- Naxxramas Cultist
	["0xF130003E6C049D8A"]  = CIRCLE; -- Naxxramas Cultist
	["0xF130003E6C049D8C"]  = STAR; -- Naxxramas Cultist
}

defaultNpcsToMark["Naxxramas"]["spider_faerlina"] = {
	["0xF13000407904A654"]  = SKULL; -- Naxxramas Follower
	["0xF13000407904A653"]  = CROSS; -- Naxxramas Follower
	["0xF13000407A04A658"]  = SQUARE; -- Naxxramas Worshipper
	["0xF13000407A04A657"]  = MOON; -- Naxxramas Worshipper
	["0xF130003E510159B0"]  = TRIANGLE; -- Grand Widow Faerlina
	["0xF13000407A04A655"]  = CIRCLE; -- Naxxramas Worshipper
	["0xF13000407A04A656"]  = STAR; -- Naxxramas Worshipper
}

defaultNpcsToMark["Naxxramas"]["spider_final"] = {
	["0xF130003E6B01F3EE"]  = SKULL; -- Tomb Horror
	["0xF130003E66049DB2"]  = CROSS; -- Dread Creeper
	["0xF130003E66049DB3"]  = SQUARE; -- Dread Creeper
	["0xF130003E66049DB4"]  = MOON; -- Dread Creeper
	["0xF130003E66015A2F"]  = MOON; -- Dread Creeper
}

defaultNpcsToMark["Naxxramas"]["spider_ring_3"] = {
	["0xF130003FF0015AD4"]  = SKULL; -- Necropolis Acolyte
	["0xF130003FF0015AD3"]  = CROSS; -- Necropolis Acolyte
}


----/////////////// CONSTRUCT ///////////////

defaultNpcsToMark["Naxxramas"]["construct_entrance"] = {
	["0xF130003E910158C7"]  = SKULL; -- Patchwork Golem
	["0xF130003E910158C6"]  = CROSS; -- Patchwork Golem
	["0xF130003E910158C5"]  = SQUARE; -- Patchwork Golem
	["0xF130003E910158C8"]  = MOON; -- Patchwork Golem
}

defaultNpcsToMark["Naxxramas"]["construct_entrance_patrol"] = {
	["0xF130003E920158CD"]  = TRIANGLE; -- Bile Retcher
	["0xF130003E920158CE"]  = DIAMOND; -- Bile Retcher
	["0xF130003E9D015A90"]  = CIRCLE; -- Sludge Belcher
	["0xF130003E9D015A91"]  = STAR; -- Sludge Belcher
}

defaultNpcsToMark["Naxxramas"]["construct_central_left"] = {
	["0xF130003E920158CF"]  = SKULL; -- Bile Retcher
	["0xF130003E910158CA"]  = CROSS; -- Patchwork Golem
	["0xF130003E910158C9"]  = SQUARE; -- Patchwork Golem
}

defaultNpcsToMark["Naxxramas"]["construct_central_right"] = {
	["0xF130003E920158D0"]  = SKULL; -- Bile Retcher
	["0xF130003E910158CB"]  = CROSS; -- Patchwork Golem
	["0xF130003E910158CC"]  = SQUARE; -- Patchwork Golem
}

defaultNpcsToMark["Naxxramas"]["construct_central"] = {
	["0xF130003E910158D8"]  = SKULL; -- Patchwork Golem
	["0xF130003E910158D7"]  = CROSS; -- Patchwork Golem
	["0xF130003E910158D6"]  = SQUARE; -- Patchwork Golem
	["0xF130003E910158D9"]  = MOON; -- Patchwork Golem
}

defaultNpcsToMark["Naxxramas"]["construct_patchwerk_patrol"] = {
	["0xF130003E92015A93"]  = SKULL; -- Bile Retcher
	["0xF130003E92015A8E"]  = TRIANGLE; -- Bile Retcher
	["0xF130003E9D015A92"]  = CIRCLE; -- Sludge Belcher
	["0xF130003E92015A8F"]  = STAR; -- Bile Retcher
}

defaultNpcsToMark["Naxxramas"]["construct_scientist_1"] = {
	["0xF130003E95049DE0"]  = SKULL; -- Living Monstrosity
	["0xF130003E94049DE6"]  = MOON; -- Mad Scientist
	["0xF130003E94049DE5"]  = SQUARE; -- Mad Scientist
	["0xF130003E94049DE7"]  = CROSS; -- Mad Scientist
	["0xF130003E94049DE8"]  = DIAMOND; -- Mad Scientist
}

defaultNpcsToMark["Naxxramas"]["construct_scientist_2"] = {
	["0xF130003E95049DE9"]  = SKULL; -- Living Monstrosity
	["0xF130003E94015AA1"]  = MOON; -- Mad Scientist
	["0xF130003E94015AA0"]  = SQUARE; -- Mad Scientist
	["0xF130003E94015A9F"]  = CROSS; -- Mad Scientist
	["0xF130003E94015A9E"]  = DIAMOND; -- Mad Scientist
}

defaultNpcsToMark["Naxxramas"]["construct_patchwerk"] = {
	["0xF130003E91015A96"]  = SKULL; -- Patchwork Golem
	["0xF130003E91015A94"]  = CROSS; -- Patchwork Golem
	["0xF130003E91015A97"]  = SQUARE; -- Patchwork Golem
	["0xF130003E91015A95"]  = MOON; -- Patchwork Golem
}

defaultNpcsToMark["Naxxramas"]["construct_scientist_3"] = {
	["0xF130003E95049DF5"]  = SKULL; -- Living Monstrosity
	["0xF130003E94049DF6"]  = MOON; -- Mad Scientist
	["0xF130003E94049DF5"]  = SQUARE; -- Mad Scientist
	["0xF130003E94049DF3"]  = CROSS; -- Mad Scientist
	["0xF130003E94049DF4"]  = DIAMOND; -- Mad Scientist
}

defaultNpcsToMark["Naxxramas"]["construct_scientist_4"] = {
	["0xF130003E95049DF7"]  = SKULL; -- Living Monstrosity
	["0xF130003E94049DFB"]  = MOON; -- Mad Scientist
	["0xF130003E94049DFA"]  = SQUARE; -- Mad Scientist
	["0xF130003E94049DF9"]  = CROSS; -- Mad Scientist
	["0xF130003E94049DF8"]  = DIAMOND; -- Mad Scientist
}

defaultNpcsToMark["Naxxramas"]["construct_scientist_5"] = {
	["0xF130003E95049E00"]  = SKULL; -- Living Monstrosity
	["0xF130003E94015A85"]  = MOON; -- Mad Scientist
	["0xF130003E94015A86"]  = SQUARE; -- Mad Scientist
	["0xF130003E94015A87"]  = CROSS; -- Mad Scientist
	["0xF130003E94015A88"]  = DIAMOND; -- Mad Scientist
}

defaultNpcsToMark["Naxxramas"]["construct_grobb_entrance"] = {
	["0xF130003E990158F2"]  = SKULL; -- Stitched Spewer
	["0xF130003E990158F1"]  = CROSS; -- Stitched Spewer
}

defaultNpcsToMark["Naxxramas"]["construct_grobb_left"] = {
	["0xF130003E990158EC"]  = SKULL; -- Stitched Spewer
	["0xF130003E990158EB"]  = CROSS; -- Stitched Spewer
}

defaultNpcsToMark["Naxxramas"]["construct_grobb_far"] = {
	["0xF130003E990158ED"]  = SKULL; -- Stitched Spewer
	["0xF130003E99049E6B"]  = CROSS; -- Stitched Spewer
	["0xF130003E990158EE"]  = SQUARE; -- Stitched Spewer
}

----/////////////// MILITARY ///////////////

defaultNpcsToMark["Naxxramas"]["military_entrance_middle"] = {
	["0xF130003F1101594B"]  = SKULL; -- Deathknight Captain
	["0xF130003F1101594C"]  = CROSS; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_entrance_left"] = {
	["0xF130003F1201594A"]  = SKULL; -- Deathknight
	["0xF130003F1A015950"]  = CROSS; -- Risen Deathknight
	["0xF130003F1A015951"]  = SQUARE; -- Risen Deathknight
}

defaultNpcsToMark["Naxxramas"]["military_entrance_right"] = {
	["0xF130003F12015949"]  = SKULL; -- Deathknight
	["0xF130003F1A015953"]  = CROSS; -- Risen Deathknight
	["0xF130003F1A015952"]  = SQUARE; -- Risen Deathknight
}

defaultNpcsToMark["Naxxramas"]["military_entrance_patrol"] = {
	["0xF130003F2401594D"]  = SKULL; -- Shade of Naxxramas
	["0xF130003F2501594F"]  = CROSS; -- Necro Knight
	["0xF130003F2501594E"]  = SQUARE; -- Necro Knight
}

defaultNpcsToMark["Naxxramas"]["military_static_1"] = {
	["0xF130003F12015967"]  = SKULL; -- Deathknight
	["0xF130003F1C015956"]  = CROSS; -- Dark Touched Warrior
	["0xF130003F1E015955"]  = SQUARE; -- Death Touched Warrior
	["0xF130003F11015954"]  = MOON; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_forge_captains"] = {
	["0xF130003F11015968"]  = SKULL; -- Deathknight Captain
	["0xF130003F11015969"]  = CROSS; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_forge_shade_patrol"] = {
	["0xF130003F24015957"]  = STAR; -- Shade of Naxxramas
}

defaultNpcsToMark["Naxxramas"]["military_forge_shades"] = {
	["0xF130003F24015961"]  = SKULL; -- Shade of Naxxramas
	["0xF130003F24015960"]  = CROSS; -- Shade of Naxxramas
	["0xF130003F2501596A"]  = SQUARE; -- Necro Knight
}

defaultNpcsToMark["Naxxramas"]["military_forge_constructs"] = {
	["0xF130003F27015962"]  = SKULL; -- Bony Construct
	["0xF130003F27015963"]  = CROSS; -- Bony Construct
	["0xF130003F27015964"]  = SQUARE; -- Bony Construct
	["0xF130003F27015965"]  = MOON; -- Bony Construct
	["0xF130003F27015966"]  = TRIANGLE; -- Bony Construct
}

defaultNpcsToMark["Naxxramas"]["military_forge_smiths"] = {
	["0xF130003F4101595A"]  = SKULL; -- Skeletal Smith
	["0xF130003F41015958"]  = CROSS; -- Skeletal Smith
	["0xF130003F41015959"]  = SQUARE; -- Skeletal Smith
	["0xF130003F4101595B"]  = MOON; -- Skeletal Smith
}

defaultNpcsToMark["Naxxramas"]["military_static_2"] = {
	["0xF130003F1201595E"]  = SKULL; -- Deathknight
	["0xF130003F1201595D"]  = CROSS; -- Deathknight
	["0xF130003F1101595C"]  = SQUARE; -- Deathknight Captain
	["0xF130003F1101595F"]  = MOON; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_static_3"] = {
	["0xF130003F1201596E"]  = SKULL; -- Deathknight
	["0xF130003F1C01596B"]  = CROSS; -- Dark Touched Warrior
	["0xF130003F1D01596C"]  = SQUARE; -- Doom Touched Warrior
	["0xF130003F1101596D"]  = MOON; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_upper_patrol"] = {
	["0xF130003F12015978"]  = SKULL; -- Deathknight
	["0xF130003F1E01597A"]  = CROSS; -- Death Touched Warrior
	["0xF130003F1E015979"]  = SQUARE; -- Death Touched Warrior
}

defaultNpcsToMark["Naxxramas"]["military_static_4"] = {
	["0xF130003F12015973"]  = SKULL; -- Deathknight
	["0xF130003F12015972"]  = CROSS; -- Deathknight
	["0xF130003F1101596F"]  = SQUARE; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_static_5"] = {
	["0xF130003F12015975"]  = SKULL; -- Deathknight
	["0xF130003F12015974"]  = CROSS; -- Deathknight
	["0xF130003F11015970"]  = SQUARE; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_static_6"] = {
	["0xF130003F12015977"]  = SKULL; -- Deathknight
	["0xF130003F12015976"]  = CROSS; -- Deathknight
	["0xF130003F11015971"]  = SQUARE; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_static_7"] = {
	["0xF130003F1201597C"]  = SKULL; -- Deathknight
	["0xF130003F1E01597B"]  = CROSS; -- Death Touched Warrior
	["0xF130003F1D01597E"]  = SQUARE; -- Doom Touched Warrior
	["0xF130003F1101597D"]  = MOON; -- Deathknight Captain
}

defaultNpcsToMark["Naxxramas"]["military_horse_duo"] = {
	["0xF130003F23049E07"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F23049E08"]  = CROSS; -- Deathknight Cavalier
}

defaultNpcsToMark["Naxxramas"]["military_horse_1"] = {
	["0xF130003F2301597F"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F1E015982"]  = CROSS; -- Death Touched Warrior
	["0xF130003F1E015981"]  = SQUARE; -- Death Touched Warrior
	["0xF130003F1E015989"]  = MOON; -- Death Touched Warrior
}

defaultNpcsToMark["Naxxramas"]["military_horse_2"] = {
	["0xF130003F23015980"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F1C015983"]  = CROSS; -- Dark Touched Warrior
	["0xF130003F1C015984"]  = SQUARE; -- Dark Touched Warrior
	["0xF130003F1D015985"]  = MOON; -- Doom Touched Warrior
}

defaultNpcsToMark["Naxxramas"]["military_horse_3"] = {
	["0xF130003F23049E06"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F1C015988"]  = CROSS; -- Dark Touched Warrior
	["0xF130003F1A015987"]  = SQUARE; -- Risen Deathknight
	["0xF130003F1A015986"]  = MOON; -- Risen Deathknight
}

defaultNpcsToMark["Naxxramas"]["military_horse_trio"] = {
	["0xF1300041DD049549"]  = SKULL; -- Death Lord
	["0xF130003F23015992"]  = CROSS; -- Deathknight Cavalier
	["0xF130003F23015991"]  = SQUARE; -- Deathknight Cavalier
}

defaultNpcsToMark["Naxxramas"]["military_horse_4"] = {
	["0xF130003F23015993"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F1C01598A"]  = CROSS; -- Dark Touched Warrior
	["0xF130003F1C01598B"]  = SQUARE; -- Dark Touched Warrior
	["0xF130003F1D01598C"]  = MOON; -- Doom Touched Warrior
}

defaultNpcsToMark["Naxxramas"]["military_razuvious"] = {
	["0xF1300041A304A65F"]  = DIAMOND; -- Deathknight Understudy, left far
	["0xF1300041A304A660"]  = STAR; -- Deathknight Understudy, right far
	["0xF1300041A304A661"]  = TRIANGLE; -- Deathknight Understudy, left close
	["0xF1300041A304A662"]  = CIRCLE; -- Deathknight Understudy, right close
	["0xF130003EBD01598C"]  = SKULL; -- Instructor Razuvious  
}

defaultNpcsToMark["Naxxramas"]["military_weps_1"] = {
	["0xF130003F4201F334"]  = SKULL; -- Unholy Axe
	["0xF130003F4201F335"]  = CROSS; -- Unholy Axe
}

defaultNpcsToMark["Naxxramas"]["military_weps_2"] = {
	["0xF130003F5801F350"]  = SKULL; -- Unholy Swords
	["0xF130003F4201F336"]  = CROSS; -- Unholy Axe
}

defaultNpcsToMark["Naxxramas"]["military_weps_3"] = {
	["0xF130003F5801F34F"]  = SKULL; -- Unholy Swords
	["0xF130003F4201F337"]  = CROSS; -- Unholy Axe
}

defaultNpcsToMark["Naxxramas"]["military_weps_4"] = {
	["0xF130003F5701F34A"]  = SKULL; -- Unholy Staff
	["0xF130003F4201F333"]  = CROSS; -- Unholy Axe
}

defaultNpcsToMark["Naxxramas"]["military_weps_5"] = {
	["0xF130003F5701F34B"]  = SKULL; -- Unholy Staff
	["0xF130003F57049E02"]  = CROSS; -- Unholy Staff
}

defaultNpcsToMark["Naxxramas"]["military_gothik_horses"] = {
	["0xF130003F2301599A"]  = SKULL; -- Deathknight Cavalier
	["0xF130003F23015999"]  = CROSS; -- Deathknight Cavalier
}

defaultNpcsToMark["Naxxramas"]["military_gothik_shade"] = {
	["0xF130003F24015996"]  = SKULL; -- Shade of Naxxramas
	["0xF130003F25015998"]  = CROSS; -- Necro Knight
	["0xF130003F25015997"]  = SQUARE; -- Necro Knight
}

defaultNpcsToMark["Naxxramas"]["military_ring_acoltye_1"] = {
	["0xF130003FF0015AD9"]  = SKULL; -- Necropolis Acolyte
	["0xF130003FF0015ADA"]  = CROSS; -- Necropolis Acolyte
}

defaultNpcsToMark["Naxxramas"]["military_ring_acoltye_2"] = {
	["0xF130003FF0015ADE"]  = SKULL; -- Necropolis Acolyte
	["0xF130003FF0015ADF"]  = CROSS; -- Necropolis Acolyte
}

defaultNpcsToMark["Naxxramas"]["military_ring_acoltye_3"] = {
	["0xF130003FF0015AE0"]  = SKULL; -- Necropolis Acolyte
	["0xF130003FF0015AE1"]  = CROSS; -- Necropolis Acolyte
}

defaultNpcsToMark["Naxxramas"]["military_ring_four_horsemen"] = {
	["0xF130003EBE015AB3"]  = SKULL; -- Highlord Mograine
	["0xF130003EC0015AB0"]  = CROSS; -- Thane Korth'azz
	["0xF130003EBF015AB2"]  = SQUARE; -- Sir Zeliak
	["0xF130003EC1015AB1"]  = MOON; -- Lady Blaumeux
}

--/////////////// AQ40 ///////////////

defaultNpcsToMark["Ahn'Qiraj"] = {}

defaultNpcsToMark["Ahn'Qiraj"]["entrance_1"] = {
	["0xF130003BA0015613"]  = SKULL; -- Anubisath Sentinel
	["0xF130003BA0015610"]  = MOON; -- Anubisath Sentinel
	["0xF130003BA0015611"]  = SQUARE; -- Anubisath Sentinel
	["0xF130003BA0015612"]  = CROSS; -- Anubisath Sentinel
}

defaultNpcsToMark["Ahn'Qiraj"]["entrance_2"] = {
	["0xF130003BA001560C"]  = SKULL; -- Anubisath Sentinel
	["0xF130003BA001560D"]  = CROSS; -- Anubisath Sentinel
	["0xF130003BA001560F"]  = MOON; -- Anubisath Sentinel
	["0xF130003BA001560E"]  = SQUARE; -- Anubisath Sentinel
}

defaultNpcsToMark["Ahn'Qiraj"]["entrance_patrols"] = {
	["0xF130003B9E049C9F"]  = CIRCLE; -- Obsidian Eradicator
	["0xF130003B9E01580A"]  = TRIANGLE; -- Obsidian Eradicator
	["0xF130003B9E049CA0"]  = DIAMOND -- Obsidian Eradicator
}

defaultNpcsToMark["Ahn'Qiraj"]["brainwasher_1"] = {
	["0xF130003B8F01562D"] = SKULL; -- Qiraji Brainwasher
	["0xF130003B8101562C"] = SQUARE; -- Vekniss Guardian
	["0xF130003B8101562B"] = CROSS; -- Vekniss Guardian
}

defaultNpcsToMark["Ahn'Qiraj"]["warrior_1"] = {
	["0xF130003B7E01567A"] = TRIANGLE; -- Vekniss Warrior
	["0xF130003B7E015679"] = UNMARKED; -- Vekniss Warrior
	["0xF130003B7E015678"] = UNMARKED -- Vekniss Warrior
}

defaultNpcsToMark["Ahn'Qiraj"]["brainwasher_2"] = {
	["0xF130003B81015630"]  = MOON; -- Vekniss Guardian
	["0xF130003B8101562F"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B81015677"]  = CROSS; -- Vekniss Guardian
	["0xF130003B8F01562E"]  = SKULL; -- Qiraji Brainwasher
}

defaultNpcsToMark["Ahn'Qiraj"]["brainwasher_left"] = {
	["0xF130003B8101563A"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B8F015636"]  = CROSS; -- Qiraji Brainwasher
	["0xF130003B81015639"]  = MOON; -- Vekniss Guardian
	["0xF130003B81015638"]  = TRIANGLE; -- Vekniss Guardian
	["0xF130003B8F015637"]  = SKULL; -- Qiraji Brainwasher
}

defaultNpcsToMark["Ahn'Qiraj"]["brainwasher_right"] = {
	["0xF130003B8101563C"]  = MOON; -- Vekniss Guardian
	["0xF130003B8F015634"]  = SKULL; -- Qiraji Brainwasher
	["0xF130003B8101563D"]  = TRIANGLE; -- Vekniss Guardian
	["0xF130003B8101563B"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B8F015635"]  = CROSS; -- Qiraji Brainwasher
}

defaultNpcsToMark["Ahn'Qiraj"]["warrior_2"] = {
	["0xF130003B7E049CA2"]  = STAR; -- Vekniss Warrior
	["0xF130003B7E049CA4"]  = UNMARKED; -- Vekniss Warrior
	["0xF130003B7E049CA3"]  = UNMARKED; -- Vekniss Warrior
}

defaultNpcsToMark["Ahn'Qiraj"]["guardian_1"] = {
	["0xF130003B81015644"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B81015645"]  = DIAMOND; -- Vekniss Guardian
	["0xF130003B81049CA1"]  = CROSS; -- Vekniss Guardian
	["0xF130003B81015642"]  = SKULL; -- Vekniss Guardian
	["0xF130003B81015643"]  = MOON; -- Vekniss Guardian
	["0xF130003B81015641"]  = TRIANGLE; -- Vekniss Guardian
}

defaultNpcsToMark["Ahn'Qiraj"]["guardian_2"] = {
	["0xF130003B81015648"]  = CROSS; -- Vekniss Guardian
	["0xF130003B81015649"]  = TRIANGLE; -- Vekniss Guardian
	["0xF130003B81015647"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B8101564A"]  = MOON; -- Vekniss Guardian
	["0xF130003B81015646"]  = DIAMOND; -- Vekniss Guardian
	["0xF130003B8101564B"]  = SKULL; -- Vekniss Guardian
}

defaultNpcsToMark["Ahn'Qiraj"]["guardian_3"] = {
	["0xF130003B8101564E"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B8101564F"]  = SKULL; -- Vekniss Guardian
	["0xF130003B8101564C"]  = CROSS; -- Vekniss Guardian
	["0xF130003B81015650"]  = DIAMOND; -- Vekniss Guardian
	["0xF130003B8101564D"]  = TRIANGLE; -- Vekniss Guardian
	["0xF130003B81015651"]  = MOON; -- Vekniss Guardian
}

defaultNpcsToMark["Ahn'Qiraj"]["guardian_4"] = {
	["0xF130003B8101565B"]  = TRIANGLE; -- Vekniss Guardian
	["0xF130003B81015657"]  = CROSS; -- Vekniss Guardian
	["0xF130003B8101565A"]  = DIAMOND; -- Vekniss Guardian
	["0xF130003B81015658"]  = SQUARE; -- Vekniss Guardian
	["0xF130003B8101565C"]  = MOON; -- Vekniss Guardian
	["0xF130003B81015659"]  = SKULL; -- Vekniss Guardian
}

defaultNpcsToMark["Ahn'Qiraj"]["sartura"] = {
	["0xF130003E70015662"]  = CROSS; -- Sartura's Royal Guard
	["0xF130003E70015661"]  = SQUARE; -- Sartura's Royal Guard
	["0xF130003E70015663"]  = MOON; -- Sartura's Royal Guard
	["0xF130003C9C015660"]  = SKULL; -- Battleguard Sartura
}

defaultNpcsToMark["Ahn'Qiraj"]["soldiers"] = {
	["0xF130003B7D015762"]  = SKULL; -- Vekniss Soldier
	["0xF130003B7D01575D"]  = TRIANGLE; -- Vekniss Soldier
	["0xF130003B7D01575F"]  = SQUARE; -- Vekniss Soldier
	["0xF130003B7D015760"]  = CROSS; -- Vekniss Soldier
	["0xF130003B7D01575E"]  = MOON; -- Vekniss Soldier
}

defaultNpcsToMark["Ahn'Qiraj"]["scorpions"] = {
	["0xF130003B88015798"]  = SKULL; -- Vekniss Hive Crawler
	["0xF130003B88049CA5"]  = MOON; -- Vekniss Hive Crawler
	["0xF130003B8801578E"]  = TRIANGLE; -- Vekniss Hive Crawler
	["0xF130003B88049CA6"]  = SQUARE; -- Vekniss Hive Crawler
	["0xF130003B88015799"]  = CROSS; -- Vekniss Hive Crawler
	["0xF130003B8801578F"]  = DIAMOND; -- Vekniss Hive Crawler
	}

defaultNpcsToMark["Ahn'Qiraj"]["lashers"] = {
	["0xF130003B830157CD"]  = CIRCLE; -- Vekniss Stinger
	["0xF130003B910157BF"]  = MOON; -- Qiraji Lasher
	["0xF130003B910157C3"]  = CROSS; -- Qiraji Lasher
	["0xF130003B910157C2"]  = SQUARE; -- Qiraji Lasher
	["0xF130003B910157C8"]  = SKULL; -- Qiraji Lasher
	["0xF130003B910157BC"]  = TRIANGLE; -- Qiraji Lasher
	["0xF130003B830157B6"]  = DIAMOND; -- Vekniss Stinger
}

defaultNpcsToMark["Ahn'Qiraj"]["defenders"] = {
	["0xF130003BAD0157CF"] = SKULL; -- Anubisath Defender
	["0xF130003BAD0157D1"] = CROSS; -- Anubisath Defender
	["0xF130003BAD0157D2"] = SQUARE; -- Anubisath Defender
	["0xF130003BAD0157D0"] = MOON; -- Anubisath Defender
	["0xF130003BAD0157D3"] = TRIANGLE -- Anubisath Defender
}

defaultNpcsToMark["Ahn'Qiraj"]["champions"] = {
	["0xF130003B940157E7"] = SQUARE; -- Qiraji Champion
	["0xF130003B940157E5"] = DIAMOND; -- Qiraji Champion
	["0xF130003B940157E6"] = CIRCLE; -- Qiraji Champion
	["0xF130003B940157F9"] = CROSS; -- Qiraji Champion
	["0xF130003B940157E4"] = MOON; -- Qiraji Champion
	["0xF130003B940157FA"] = TRIANGLE; -- Qiraji Champion
	["0xF130003B940157E3"] = SKULL; -- Qiraji Champion
	["0xF130003B940157DE"] = STAR; -- Qiraji Champion
}