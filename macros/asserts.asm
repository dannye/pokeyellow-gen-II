; Macros to verify assumptions about the data or code

MACRO table_width
CURRENT_TABLE_WIDTH = \1
IF DEF(CURRENT_TABLE_START)
PURGE CURRENT_TABLE_START
ENDC
IF _NARG == 2
CURRENT_TABLE_START EQUS "\2"
ELSE
CURRENT_TABLE_START EQUS "._table_width\@"
CURRENT_TABLE_START:
ENDC
ENDM

MACRO assert_table_length
x = \1
	ASSERT x * CURRENT_TABLE_WIDTH == @ - CURRENT_TABLE_START, \
		"{CURRENT_TABLE_START}: expected {d:x} entries, each {d:CURRENT_TABLE_WIDTH} bytes"
ENDM

MACRO list_start
list_index = 0
IF DEF(CURRENT_LIST_START)
PURGE CURRENT_LIST_START
ENDC
IF _NARG == 1
CURRENT_LIST_START EQUS "\1"
ELSE
CURRENT_LIST_START EQUS "._list_start\@"
CURRENT_LIST_START:
ENDC
ENDM

MACRO li
	ASSERT !STRIN(\1, "@"), STRCAT("String terminator \"@\" in list entry: ", \1)
	db \1, "@"
list_index = list_index + 1
ENDM

MACRO assert_list_length
x = \1
	ASSERT x == list_index, \
		"{CURRENT_LIST_START}: expected {d:x} entries, got {d:list_index}"
ENDM

MACRO def_grass_wildmons
;\1: encounter rate
if DEF(CURRENT_GRASS_WILDMONS_LABEL)
PURGE CURRENT_GRASS_WILDMONS_LABEL
endc
CURRENT_GRASS_WILDMONS_RATE = \1
CURRENT_GRASS_WILDMONS_LABEL EQUS "._def_grass_wildmons_\1"
CURRENT_GRASS_WILDMONS_LABEL:
	db \1
ENDM

MACRO end_grass_wildmons
	IF CURRENT_GRASS_WILDMONS_RATE == 0
		assert 1 == @ - CURRENT_GRASS_WILDMONS_LABEL, \
			"def_grass_wildmons {d:CURRENT_GRASS_WILDMONS_RATE}: expected 1 byte"
	ELSE
		assert WILDDATA_LENGTH == @ - CURRENT_GRASS_WILDMONS_LABEL, \
			"def_grass_wildmons {d:CURRENT_GRASS_WILDMONS_RATE}: expected {d:WILDDATA_LENGTH} bytes"
	ENDC
ENDM

MACRO def_water_wildmons
;\1: encounter rate
if DEF(CURRENT_WATER_WILDMONS_LABEL)
PURGE CURRENT_WATER_WILDMONS_LABEL
endc
CURRENT_WATER_WILDMONS_RATE = \1
CURRENT_WATER_WILDMONS_LABEL EQUS "._def_water_wildmons_\1"
CURRENT_WATER_WILDMONS_LABEL:
	db \1
ENDM

MACRO end_water_wildmons
	IF CURRENT_WATER_WILDMONS_RATE == 0
		assert 1 == @ - CURRENT_WATER_WILDMONS_LABEL, \
			"def_water_wildmons {d:CURRENT_WATER_WILDMONS_RATE}: expected 1 byte"
	ELSE
		assert WILDDATA_LENGTH == @ - CURRENT_WATER_WILDMONS_LABEL, \
			"def_water_wildmons {d:CURRENT_WATER_WILDMONS_RATE}: expected {d:WILDDATA_LENGTH} bytes"
	ENDC
ENDM
