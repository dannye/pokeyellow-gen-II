; Song ids are calculated by address to save space.
; SFX_Headers_(1|2|3) indexes (see audio/headers/*.asm)

MACRO music_const
\1 EQUS "((\2 - SFX_Headers_1) / 3)"
ENDM

	; AUDIO_1
	music_const MUSIC_PALLET_TOWN,         Music_PalletTown
	music_const MUSIC_POKECENTER,          Music_Pokecenter
	music_const MUSIC_GYM,                 Music_Gym
	music_const MUSIC_CITIES1,             Music_Cities1
	music_const MUSIC_CITIES2,             Music_Cities2
	music_const MUSIC_CELADON,             Music_Celadon
	music_const MUSIC_CINNABAR,            Music_Cinnabar
	music_const MUSIC_VERMILION,           Music_Vermilion
	music_const MUSIC_LAVENDER,            Music_Lavender
	music_const MUSIC_SS_ANNE,             Music_SSAnne
	music_const MUSIC_MEET_PROF_OAK,       Music_MeetProfOak
	music_const MUSIC_MEET_RIVAL,          Music_MeetRival
	music_const MUSIC_MUSEUM_GUY,          Music_MuseumGuy
	music_const MUSIC_SAFARI_ZONE,         Music_SafariZone
	music_const MUSIC_PKMN_HEALED,         Music_PkmnHealed
	music_const MUSIC_ROUTES1,             Music_Routes1
	music_const MUSIC_ROUTES2,             Music_Routes2
	music_const MUSIC_ROUTES3,             Music_Routes3
	music_const MUSIC_ROUTES4,             Music_Routes4
	music_const MUSIC_INDIGO_PLATEAU,      Music_IndigoPlateau

	; AUDIO_2
	music_const MUSIC_GYM_LEADER_BATTLE,   Music_GymLeaderBattle
	music_const MUSIC_TRAINER_BATTLE,      Music_TrainerBattle
	music_const MUSIC_WILD_BATTLE,         Music_WildBattle
	music_const MUSIC_FINAL_BATTLE,        Music_FinalBattle
	music_const MUSIC_DEFEATED_TRAINER,    Music_DefeatedTrainer
	music_const MUSIC_DEFEATED_WILD_MON,   Music_DefeatedWildMon
	music_const MUSIC_DEFEATED_GYM_LEADER, Music_DefeatedGymLeader

	; AUDIO_3
	music_const MUSIC_TITLE_SCREEN,        Music_TitleScreen
	music_const MUSIC_CREDITS,             Music_Credits
	music_const MUSIC_HALL_OF_FAME,        Music_HallOfFame
	music_const MUSIC_OAKS_LAB,            Music_OaksLab
	music_const MUSIC_JIGGLYPUFF_SONG,     Music_JigglypuffSong
	music_const MUSIC_BIKE_RIDING,         Music_BikeRiding
	music_const MUSIC_SURFING,             Music_Surfing
	music_const MUSIC_GAME_CORNER,         Music_GameCorner
	music_const MUSIC_YELLOW_INTRO,        Music_YellowIntro
	music_const MUSIC_DUNGEON1,            Music_Dungeon1
	music_const MUSIC_DUNGEON2,            Music_Dungeon2
	music_const MUSIC_DUNGEON3,            Music_Dungeon3
	music_const MUSIC_CINNABAR_MANSION,    Music_CinnabarMansion
	music_const MUSIC_POKEMON_TOWER,       Music_PokemonTower
	music_const MUSIC_SILPH_CO,            Music_SilphCo
	music_const MUSIC_MEET_EVIL_TRAINER,   Music_MeetEvilTrainer
	music_const MUSIC_MEET_FEMALE_TRAINER, Music_MeetFemaleTrainer
	music_const MUSIC_MEET_MALE_TRAINER,   Music_MeetMaleTrainer

	; AUDIO_4
	music_const MUSIC_SURFING_PIKACHU,     Music_SurfingPikachu
	music_const MUSIC_MEET_JESSIE_JAMES,   Music_MeetJessieJames
	music_const MUSIC_YELLOW_UNUSED_SONG,  Music_YellowUnusedSong
	music_const MUSIC_GB_PRINTER,          Music_GBPrinter

	; AUDIO_1 AUDIO_2 AUDIO_3 AUDIO_4
NOISE_INSTRUMENTS_START EQUS "SFX_NOISE_INSTRUMENT01"
	music_const SFX_NOISE_INSTRUMENT01, SFX_Noise_Instrument01_1
	music_const SFX_NOISE_INSTRUMENT02, SFX_Noise_Instrument02_1
	music_const SFX_NOISE_INSTRUMENT03, SFX_Noise_Instrument03_1
	music_const SFX_NOISE_INSTRUMENT04, SFX_Noise_Instrument04_1
	music_const SFX_NOISE_INSTRUMENT05, SFX_Noise_Instrument05_1
	music_const SFX_NOISE_INSTRUMENT06, SFX_Noise_Instrument06_1
	music_const SFX_NOISE_INSTRUMENT07, SFX_Noise_Instrument07_1
	music_const SFX_NOISE_INSTRUMENT08, SFX_Noise_Instrument08_1
	music_const SFX_NOISE_INSTRUMENT09, SFX_Noise_Instrument09_1
	music_const SFX_NOISE_INSTRUMENT10, SFX_Noise_Instrument10_1
	music_const SFX_NOISE_INSTRUMENT11, SFX_Noise_Instrument11_1
	music_const SFX_NOISE_INSTRUMENT12, SFX_Noise_Instrument12_1
	music_const SFX_NOISE_INSTRUMENT13, SFX_Noise_Instrument13_1
	music_const SFX_NOISE_INSTRUMENT14, SFX_Noise_Instrument14_1
	music_const SFX_NOISE_INSTRUMENT15, SFX_Noise_Instrument15_1
	music_const SFX_NOISE_INSTRUMENT16, SFX_Noise_Instrument16_1
	music_const SFX_NOISE_INSTRUMENT17, SFX_Noise_Instrument17_1
	music_const SFX_NOISE_INSTRUMENT18, SFX_Noise_Instrument18_1
	music_const SFX_NOISE_INSTRUMENT19, SFX_Noise_Instrument19_1
NOISE_INSTRUMENTS_END EQUS "SFX_NOISE_INSTRUMENT19 + 1"

CRY_SFX_START EQUS "SFX_CRY_00"
	music_const SFX_CRY_00,             SFX_Cry00_1
	music_const SFX_CRY_01,             SFX_Cry01_1
	music_const SFX_CRY_02,             SFX_Cry02_1
	music_const SFX_CRY_03,             SFX_Cry03_1
	music_const SFX_CRY_04,             SFX_Cry04_1
	music_const SFX_CRY_05,             SFX_Cry05_1
	music_const SFX_CRY_06,             SFX_Cry06_1
	music_const SFX_CRY_07,             SFX_Cry07_1
	music_const SFX_CRY_08,             SFX_Cry08_1
	music_const SFX_CRY_09,             SFX_Cry09_1
	music_const SFX_CRY_0A,             SFX_Cry0A_1
	music_const SFX_CRY_0B,             SFX_Cry0B_1
	music_const SFX_CRY_0C,             SFX_Cry0C_1
	music_const SFX_CRY_0D,             SFX_Cry0D_1
	music_const SFX_CRY_0E,             SFX_Cry0E_1
	music_const SFX_CRY_0F,             SFX_Cry0F_1
	music_const SFX_CRY_10,             SFX_Cry10_1
	music_const SFX_CRY_11,             SFX_Cry11_1
	music_const SFX_CRY_12,             SFX_Cry12_1
	music_const SFX_CRY_13,             SFX_Cry13_1
	music_const SFX_CRY_14,             SFX_Cry14_1
	music_const SFX_CRY_15,             SFX_Cry15_1
	music_const SFX_CRY_16,             SFX_Cry16_1
	music_const SFX_CRY_17,             SFX_Cry17_1
	music_const SFX_CRY_18,             SFX_Cry18_1
	music_const SFX_CRY_19,             SFX_Cry19_1
	music_const SFX_CRY_1A,             SFX_Cry1A_1
	music_const SFX_CRY_1B,             SFX_Cry1B_1
	music_const SFX_CRY_1C,             SFX_Cry1C_1
	music_const SFX_CRY_1D,             SFX_Cry1D_1
	music_const SFX_CRY_1E,             SFX_Cry1E_1
	music_const SFX_CRY_1F,             SFX_Cry1F_1
	music_const SFX_CRY_20,             SFX_Cry20_1
	music_const SFX_CRY_21,             SFX_Cry21_1
	music_const SFX_CRY_22,             SFX_Cry22_1
	music_const SFX_CRY_23,             SFX_Cry23_1
	music_const SFX_CRY_24,             SFX_Cry24_1
	music_const SFX_CRY_25,             SFX_Cry25_1
CRY_SFX_END EQUS "SFX_CRY_25 + 3"

	music_const SFX_GET_ITEM_2,         SFX_Get_Item2_1
	music_const SFX_TINK,               SFX_Tink_1
	music_const SFX_HEAL_HP,            SFX_Heal_HP_1
	music_const SFX_HEAL_AILMENT,       SFX_Heal_Ailment_1
	music_const SFX_START_MENU,         SFX_Start_Menu_1
	music_const SFX_PRESS_AB,           SFX_Press_AB_1

	; AUDIO_1 AUDIO_3 AUDIO_4
	music_const SFX_GET_ITEM_1,         SFX_Get_Item1_1

	; AUDIO_1 AUDIO_3
	music_const SFX_POKEDEX_RATING,     SFX_Pokedex_Rating_1
	music_const SFX_GET_KEY_ITEM,       SFX_Get_Key_Item_1
	music_const SFX_POISONED,           SFX_Poisoned_1
	music_const SFX_TRADE_MACHINE,      SFX_Trade_Machine_1
	music_const SFX_TURN_ON_PC,         SFX_Turn_On_PC_1
	music_const SFX_TURN_OFF_PC,        SFX_Turn_Off_PC_1
	music_const SFX_ENTER_PC,           SFX_Enter_PC_1
	music_const SFX_SHRINK,             SFX_Shrink_1
	music_const SFX_SWITCH,             SFX_Switch_1
	music_const SFX_HEALING_MACHINE,    SFX_Healing_Machine_1
	music_const SFX_TELEPORT_EXIT_1,    SFX_Teleport_Exit1_1
	music_const SFX_TELEPORT_ENTER_1,   SFX_Teleport_Enter1_1
	music_const SFX_TELEPORT_EXIT_2,    SFX_Teleport_Exit2_1
	music_const SFX_LEDGE,              SFX_Ledge_1
	music_const SFX_TELEPORT_ENTER_2,   SFX_Teleport_Enter2_1
	music_const SFX_FLY,                SFX_Fly_1
	music_const SFX_DENIED,             SFX_Denied_1
	music_const SFX_ARROW_TILES,        SFX_Arrow_Tiles_1
	music_const SFX_PUSH_BOULDER,       SFX_Push_Boulder_1
	music_const SFX_SS_ANNE_HORN,       SFX_SS_Anne_Horn_1
	music_const SFX_WITHDRAW_DEPOSIT,   SFX_Withdraw_Deposit_1
	music_const SFX_CUT,                SFX_Cut_1
	music_const SFX_GO_INSIDE,          SFX_Go_Inside_1
	music_const SFX_SWAP,               SFX_Swap_1
	music_const SFX_59,                 SFX_59_1 ; unused, sounds similar to SFX_SLOTS_STOP_WHEEL
	music_const SFX_PURCHASE,           SFX_Purchase_1
	music_const SFX_COLLISION,          SFX_Collision_1
	music_const SFX_GO_OUTSIDE,         SFX_Go_Outside_1
	music_const SFX_SAVE,               SFX_Save_1

	; AUDIO_1
	music_const SFX_POKEFLUTE,          SFX_Pokeflute
	music_const SFX_SAFARI_ZONE_PA,     SFX_Safari_Zone_PA
MAX_SFX_ID_1 EQUS "SFX_SAFARI_ZONE_PA"

	; AUDIO_2
	music_const SFX_LEVEL_UP,           SFX_Level_Up

	music_const SFX_BALL_TOSS,          SFX_Ball_Toss
	music_const SFX_BALL_POOF,          SFX_Ball_Poof
	music_const SFX_FAINT_THUD,         SFX_Faint_Thud
	music_const SFX_RUN,                SFX_Run
	music_const SFX_DEX_PAGE_ADDED,     SFX_Dex_Page_Added
	music_const SFX_CAUGHT_MON,         SFX_Caught_Mon

BATTLE_SFX_START EQUS "SFX_PECK"
	music_const SFX_PECK,               SFX_Peck
	music_const SFX_FAINT_FALL,         SFX_Faint_Fall
	music_const SFX_BATTLE_09,          SFX_Battle_09
	music_const SFX_POUND,              SFX_Pound
	music_const SFX_BATTLE_0B,          SFX_Battle_0B
	music_const SFX_BATTLE_0C,          SFX_Battle_0C
	music_const SFX_BATTLE_0D,          SFX_Battle_0D
	music_const SFX_BATTLE_0E,          SFX_Battle_0E
	music_const SFX_BATTLE_0F,          SFX_Battle_0F
	music_const SFX_DAMAGE,             SFX_Damage
	music_const SFX_NOT_VERY_EFFECTIVE, SFX_Not_Very_Effective
	music_const SFX_BATTLE_12,          SFX_Battle_12
	music_const SFX_BATTLE_13,          SFX_Battle_13
	music_const SFX_BATTLE_14,          SFX_Battle_14
	music_const SFX_VINE_WHIP,          SFX_Vine_Whip
	music_const SFX_BATTLE_16,          SFX_Battle_16 ; unused?
	music_const SFX_BATTLE_17,          SFX_Battle_17
	music_const SFX_BATTLE_18,          SFX_Battle_18
	music_const SFX_BATTLE_19,          SFX_Battle_19
	music_const SFX_SUPER_EFFECTIVE,    SFX_Super_Effective
	music_const SFX_BATTLE_1B,          SFX_Battle_1B
	music_const SFX_BATTLE_1C,          SFX_Battle_1C
	music_const SFX_DOUBLESLAP,         SFX_Doubleslap
	music_const SFX_BATTLE_1E,          SFX_Battle_1E
	music_const SFX_HORN_DRILL,         SFX_Horn_Drill
	music_const SFX_BATTLE_20,          SFX_Battle_20
	music_const SFX_BATTLE_21,          SFX_Battle_21
	music_const SFX_BATTLE_22,          SFX_Battle_22
	music_const SFX_BATTLE_23,          SFX_Battle_23
	music_const SFX_BATTLE_24,          SFX_Battle_24
	music_const SFX_BATTLE_25,          SFX_Battle_25
	music_const SFX_BATTLE_26,          SFX_Battle_26
	music_const SFX_BATTLE_27,          SFX_Battle_27
	music_const SFX_BATTLE_28,          SFX_Battle_28
	music_const SFX_BATTLE_29,          SFX_Battle_29
	music_const SFX_BATTLE_2A,          SFX_Battle_2A
	music_const SFX_BATTLE_2B,          SFX_Battle_2B
	music_const SFX_BATTLE_2C,          SFX_Battle_2C
	music_const SFX_PSYBEAM,            SFX_Psybeam
	music_const SFX_BATTLE_2E,          SFX_Battle_2E
	music_const SFX_BATTLE_2F,          SFX_Battle_2F
	music_const SFX_PSYCHIC_M,          SFX_Psychic_M
	music_const SFX_BATTLE_31,          SFX_Battle_31
	music_const SFX_BATTLE_32,          SFX_Battle_32
	music_const SFX_BATTLE_33,          SFX_Battle_33
	music_const SFX_BATTLE_34,          SFX_Battle_34
	music_const SFX_BATTLE_35,          SFX_Battle_35
	music_const SFX_BATTLE_36,          SFX_Battle_36
	music_const SFX_SILPH_SCOPE,        SFX_Silph_Scope
BATTLE_SFX_END   EQUS "SFX_SILPH_SCOPE + 1"
MAX_SFX_ID_2 EQUS "SFX_SILPH_SCOPE"

	; AUDIO_3
	music_const SFX_INTRO_LUNGE,        SFX_Intro_Lunge
	music_const SFX_INTRO_HIP,          SFX_Intro_Hip
	music_const SFX_INTRO_HOP,          SFX_Intro_Hop
	music_const SFX_INTRO_RAISE,        SFX_Intro_Raise
	music_const SFX_INTRO_CRASH,        SFX_Intro_Crash
	music_const SFX_INTRO_WHOOSH,       SFX_Intro_Whoosh
	music_const SFX_SLOTS_STOP_WHEEL,   SFX_Slots_Stop_Wheel
	music_const SFX_SLOTS_REWARD,       SFX_Slots_Reward
	music_const SFX_SLOTS_NEW_SPIN,     SFX_Slots_New_Spin
	music_const SFX_SHOOTING_STAR,      SFX_Shooting_Star
MAX_SFX_ID_3 EQUS "SFX_SHOOTING_STAR"

	; AUDIO_4
	music_const SFX_SURFING_JUMP,       SFX_Surfing_Jump
	music_const SFX_SURFING_FLIP,       SFX_Surfing_Flip
	music_const SFX_SURFING_CRASH,      SFX_Surfing_Crash
	music_const SFX_UNKNOWN_802CC_4,    SFX_802cc_4
	music_const SFX_SURFING_LAND,       SFX_Surfing_Land
	music_const SFX_GET_ITEM2_4_2,      SFX_Get_Item2_4_2
MAX_SFX_ID_4 EQUS "SFX_GET_ITEM2_4_2 + 2"

SFX_STOP_ALL_MUSIC EQU $ff
