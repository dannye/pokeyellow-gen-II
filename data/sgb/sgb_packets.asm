MACRO ATTR_BLK
; This is a command macro.
; Use ATTR_BLK_DATA for data sets.
	db ($4 << 3) + ((\1 * 6) / 16 + 1)
	db \1
ENDM

MACRO ATTR_BLK_DATA
	db \1 ; which regions are affected
	db \2 + (\3 << 2) + (\4 << 4) ; palette for each region
	db \5, \6, \7, \8 ; x1, y1, x2, y2
ENDM

MACRO PAL_SET
	db ($a << 3) + 1
	dw \1, \2, \3, \4
	ds 7, 0
ENDM

MACRO PAL_TRN
	db ($b << 3) + 1
	ds 15, 0
ENDM

MACRO MLT_REQ
	db ($11 << 3) + 1
	db \1 - 1
	ds 14, 0
ENDM

MACRO CHR_TRN
	db ($13 << 3) + 1
	db \1 + (\2 << 1)
	ds 14, 0
ENDM

MACRO PCT_TRN
	db ($14 << 3) + 1
	ds 15, 0
ENDM

MACRO MASK_EN
	db ($17 << 3) + 1
	db \1
	ds 14, 0
ENDM

MACRO DATA_SND
	db ($f << 3) + 1
	dw \1 ; address
	db \2 ; bank
	db \3 ; length (1-11)
ENDM


BlkPacket_WholeScreen:
	ATTR_BLK 1
	ATTR_BLK_DATA %011, 0,0,0, 00,00, 19,17
	ds 8, 0

BlkPacket_Battle:
	ATTR_BLK 5
	ATTR_BLK_DATA %111, 2,2,0, 00,12, 19,17 ; message box: pal 2
	ATTR_BLK_DATA %011, 1,1,0, 01,00, 10,03 ; enemy HP bar: pal 1
	ATTR_BLK_DATA %011, 0,0,0, 10,07, 19,10 ; player HP bar: pal 0
	ATTR_BLK_DATA %011, 2,2,0, 00,04, 08,11 ; player mon: pal 2
	ATTR_BLK_DATA %011, 3,3,0, 11,00, 19,06 ; enemy mon : pal 3

BlkPacket_StatusScreen:
	ATTR_BLK 1
	ATTR_BLK_DATA %111, 1,1,0, 01,00, 07,06 ; mon: pal 1, HP bar: pal 0
	ds 8, 0

BlkPacket_Pokedex:
	ATTR_BLK 1
	ATTR_BLK_DATA %111, 1,1,0, 01,01, 08,08 ; mon: pal 1, everything else: pal 0
	ds 8, 0

BlkPacket_Slots:
	ATTR_BLK 5
	ATTR_BLK_DATA %011, 1,1,0, 00,00, 19,11 ; "3" rows and top of screen: pal 1
	ATTR_BLK_DATA %011, 2,2,0, 00,04, 19,09 ; "2" rows: pal 2
	ATTR_BLK_DATA %010, 3,3,0, 00,06, 19,07 ; "1" row: pal 3
	ATTR_BLK_DATA %011, 0,0,0, 04,04, 15,09 ; slot reels: pal 0
	ATTR_BLK_DATA %011, 0,0,0, 00,12, 19,17 ; message box: pal 0

BlkPacket_Titlescreen:
	ATTR_BLK 3
	ATTR_BLK_DATA %011, 0,0,0, 00,00, 19,07 ; pokemon logo, version text: pal 0
	ATTR_BLK_DATA %011, 2,2,0, 00,08, 19,17 ; pikachu, copyright text: pal 2
	ATTR_BLK_DATA %010, 0,0,0, 09,08, 10,08 ; pika bubble: pal 0
	ds 12, 0

BlkPacket_NidorinoIntro:
	ATTR_BLK 3
	ATTR_BLK_DATA %011, 1,1,0, 00,00, 19,03 ; upper black bar: pal 1
	ATTR_BLK_DATA %011, 0,0,0, 00,04, 19,13 ; letterbox: pal 0
	ATTR_BLK_DATA %011, 1,1,0, 00,14, 19,17 ; lower black bar: pal 1
	ds 12, 0

BlkPacket_PartyMenu:
	ATTR_BLK 7
	ATTR_BLK_DATA %110, 0,0,1, 01,00, 02,12 ; mon sprites: pal 0, everything else: pal 1
	ATTR_BLK_DATA %010, 0,0,0, 05,01, 11,01 ; HP bar 0: pal set dynamically
	ATTR_BLK_DATA %010, 0,0,0, 05,03, 11,03 ; HP bar 1: pal set dynamically
	ATTR_BLK_DATA %010, 0,0,0, 05,05, 11,05 ; HP bar 2: pal set dynamically
	ATTR_BLK_DATA %010, 0,0,0, 05,07, 11,07 ; HP bar 3: pal set dynamically
	ATTR_BLK_DATA %010, 0,0,0, 05,09, 11,09 ; HP bar 4: pal set dynamically
	ATTR_BLK_DATA %010, 0,0,0, 05,11, 11,11 ; HP bar 5: pal set dynamically
	ds 4, 0

BlkPacket_TrainerCard:
	ATTR_BLK 10
	ATTR_BLK_DATA %010, 0,0,0, 03,12, 04,13 ; Boulder Badge
	ATTR_BLK_DATA %010, 1,1,0, 07,12, 08,13 ; Cascade Badge
	ATTR_BLK_DATA %010, 3,3,0, 11,12, 12,13 ; Thunder Badge
	ATTR_BLK_DATA %010, 2,2,0, 16,11, 17,12 ; Rainbow Badge
	ATTR_BLK_DATA %010, 1,1,0, 14,13, 15,13 ; Rainbow Badge
	ATTR_BLK_DATA %010, 3,3,0, 16,13, 17,13 ; Rainbow Badge
	ATTR_BLK_DATA %010, 2,2,0, 03,15, 04,16 ; Soul Badge
	ATTR_BLK_DATA %010, 3,3,0, 07,15, 08,16 ; Marsh Badge
	ATTR_BLK_DATA %010, 2,2,0, 11,15, 12,16 ; Volcano Badge
	ATTR_BLK_DATA %010, 1,1,0, 15,15, 16,16 ; Earth Badge
	ds 2, 0

BlkPacket_GameFreakIntro:
	ATTR_BLK 3
	ATTR_BLK_DATA %111, 1,1,0, 05,11, 07,13 ; falling stars (left): pal 1, GameFreak logo: pal 0
	ATTR_BLK_DATA %010, 2,2,0, 08,11, 09,13 ; falling stars (middle): pal 2
	ATTR_BLK_DATA %011, 3,3,0, 12,11, 14,13 ; falling stars (right): pal 3
	ds 12, 0

UnknownPacket_72751:
	ATTR_BLK 1
	ATTR_BLK_DATA %111, 1,1,0, 04,00, 15,05
	ds 8


PalPacket_Empty:          PAL_SET 0, 0, 0, 0
PalPacket_PartyMenu:      PAL_SET PAL_MEWMON, PAL_GREENBAR, PAL_YELLOWBAR, PAL_REDBAR
PalPacket_Black:          PAL_SET PAL_BLACK, PAL_BLACK, PAL_BLACK, PAL_BLACK
PalPacket_TownMap:        PAL_SET PAL_TOWNMAP, 0, 0, 0
PalPacket_Pokedex:        PAL_SET PAL_BROWNMON, 0, 0, 0
PalPacket_Slots:          PAL_SET PAL_SLOTS1, PAL_SLOTS2, PAL_SLOTS3, PAL_SLOTS4
PalPacket_Titlescreen:    PAL_SET PAL_LOGO2, PAL_LOGO1, PAL_MEWMON, PAL_PURPLEMON
PalPacket_TrainerCard:    PAL_SET PAL_MEWMON, PAL_BADGE, PAL_REDMON, PAL_YELLOWMON
PalPacket_Generic:        PAL_SET PAL_MEWMON, 0, 0, 0
PalPacket_NidorinoIntro:  PAL_SET PAL_PURPLEMON, PAL_BLACK, 0, 0
PalPacket_GameFreakIntro: PAL_SET PAL_GAMEFREAK, PAL_REDMON, PAL_VIRIDIAN, PAL_BLUEMON
UnknownPalPacket_72811:   PAL_SET PAL_25, PAL_25, PAL_25, PAL_25
UnknownPalPacket_72821:   PAL_SET PAL_25, PAL_27, PAL_25, PAL_25

PalTrnPacket:  PAL_TRN
MltReq1Packet: MLT_REQ 1
MltReq2Packet: MLT_REQ 2
ChrTrnPacket:  CHR_TRN 0, 0
PctTrnPacket:  PCT_TRN

MaskEnFreezePacket: MASK_EN 1
MaskEnCancelPacket: MASK_EN 0

; These are DATA_SND packets containing SNES code.
; This set of packets is found in several Japanese SGB-compatible titles.
; It appears to be part of NCL's SGB devkit.

DataSnd_728a1:
	DATA_SND $85d, $0, 11
	db  $8C                 ; cpx #$8c (2)
	db  $D0, $F4            ; bne -$0c
	db  $60                 ; rts
	ds  7, 0

DataSnd_728b1:
	DATA_SND $852, $0, 11
	db  $A9, $E7            ; lda #$e7
	db  $9F, $01, $C0, $7E  ; sta $7ec001, x
	db  $E8                 ; inx
	db  $E8                 ; inx
	db  $E8                 ; inx
	db  $E8                 ; inx
	db  $E0                 ; cpx #$8c (1)

DataSnd_728c1:
	DATA_SND $847, $0, 11
	db  $C4                 ; cmp #$c4 (2)
	db  $D0, $16            ; bne +$16
	db  $A5                 ; lda dp
	db  $CB                 ; wai
	db  $C9, $05            ; cmp #$05
	db  $D0, $10            ; bne +$10
	db  $A2, $28            ; ldx #$28

DataSnd_728d1:
	DATA_SND $83c, $0, 11
	db  $F0, $12            ; beq +$12
	db  $A5                 ; lda dp
	db  $C9, $C9            ; cmp #$c9
	db  $C8                 ; iny
	db  $D0, $1C            ; bne +$1c
	db  $A5                 ; lda dp
	db  $CA                 ; dex
	db  $C9                 ; cmp #$c4 (1)

DataSnd_728e1:
	DATA_SND $831, $0, 11
	dbw $0C, $CAA5          ; tsb $caa5
	db  $C9, $7E            ; cmp #$7e
	db  $D0, $06            ; bne +$06
	db  $A5                 ; lda dp
	db  $CB                 ; wai
	db  $C9, $7E            ; cmp #$7e

DataSnd_728f1:
	DATA_SND $826, $0, 11
	db  $39                 ; bne +$39 (2)
	dbw $CD, $C48           ; cmp $c48
	db  $D0, $34            ; bne +$34
	db  $A5                 ; lda dp
	db  $C9, $C9            ; cmp #$c9
	db  $80, $D0            ; bra -$30

DataSnd_72901:
	DATA_SND $81b, $0, 11
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	                        ; $820:
	db  $A9,$01             ; lda #01
	dbw $CD,$C4F            ; cmp $c4f
	db  $D0                 ; bne +$39 (1)

DataSnd_72911:
	DATA_SND $810, $0, 11
	dbw $4C, $820           ; jmp $820
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $EA                 ; nop
	db  $60                 ; rts
	db  $EA                 ; nop
	db  $EA                 ; nop
