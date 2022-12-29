DrawAllPokeballs:
	call LoadPartyPokeballGfx
	call SetupOwnPartyPokeballs
	ld a, [wIsInBattle]
	dec a
	ret z ; return if wild pokémon
	jp SetupEnemyPartyPokeballs

DrawEnemyPokeballs:
	call LoadPartyPokeballGfx
	jp SetupEnemyPartyPokeballs

LoadPartyPokeballGfx:
	ld de, PokeballTileGraphics
	ld hl, vSprites tile $31
	lb bc, BANK(PokeballTileGraphics), (PokeballTileGraphicsEnd - PokeballTileGraphics) / $10
	jp CopyVideoData

SetupOwnPartyPokeballs:
	ld hl, PlayerHUDTilesBeforeStart
	call PlaceHUDTilesBeforeStart
	ld hl, wPartyMon1
	ld de, wPartyCount
	call SetupPokeballs
	ld a, $60
	ld hl, wBaseCoordX
	ld [hli], a
	ld [hl], a
	ld a, 8
	ld [wHUDPokeballGfxOffsetX], a
	xor a
	ld [wdef5], a
	ld hl, wShadowOAM
	jp WritePokeballOAMData

SetupEnemyPartyPokeballs:
	call PlaceEnemyHUDTiles
	ld hl, wEnemyMons
	ld de, wEnemyPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $48
	ld [hli], a
	ld [hl], $20
	ld a, -8
	ld [wHUDPokeballGfxOffsetX], a
	ld a, $1
	ld [wdef5], a
	ld hl, wShadowOAMSprite06
	jp WritePokeballOAMData

SetupPokeballs:
	ld a, [de]
	push af
	ld de, wBuffer
	ld c, PARTY_LENGTH
	ld a, $34 ; empty pokeball
.emptyloop
	ld [de], a
	inc de
	dec c
	jr nz, .emptyloop
	pop af
	ld de, wBuffer
.monloop
	push af
	call PickPokeball
	inc de
	pop af
	dec a
	jr nz, .monloop
	ret

PickPokeball:
	inc hl
	ld a, [hli]
	and a
	jr nz, .alive
	ld a, [hl]
	and a
	ld b, $33 ; crossed ball (fainted)
	jr z, .done_fainted
.alive
	inc hl
	inc hl
	ld a, [hl] ; status
	and a
	ld b, $32 ; black ball (status)
	jr nz, .done
	dec b ; regular ball
	jr .done
.done_fainted
	inc hl
	inc hl
.done
	ld a, b
	ld [de], a
	ld bc, wPartyMon2 - wPartyMon1Status
	add hl, bc ; next mon struct
	ret

WritePokeballOAMData:
	ld de, wBuffer
	ld c, PARTY_LENGTH
.loop
	ld a, [wBaseCoordY]
	ld [hli], a
	ld a, [wBaseCoordX]
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld a, [wdef5]
	ld [hli], a
	ld a, [wBaseCoordX]
	ld b, a
	ld a, [wHUDPokeballGfxOffsetX]
	add b
	ld [wBaseCoordX], a
	inc de
	dec c
	jr nz, .loop
	ret

PlacePlayerHUDTiles:
	ld hl, PlayerBattleHUDGraphicsTiles
PlaceHUDTilesBeforeStart:
	ld de, wHUDGraphicsTiles
	ld bc, $3
	call CopyData
	hlcoord 18, 10
	ld de, -1
	ld a, $73
	jr PlaceHUDTiles

PlayerBattleHUDGraphicsTiles:
; The tile numbers for specific parts of the battle display for the player's pokemon
	db $73 ; unused ($73 is hardcoded into the routine that uses these bytes)
	db $77 ; lower-right corner tile of the HUD
	db $6F ; lower-left triangle tile of the HUD

PlayerHUDTilesBeforeStart:
	db $73
	db $75
	db $6F

PlaceEnemyHUDTiles:
	ld hl, EnemyBattleHUDGraphicsTiles
	ld de, wHUDGraphicsTiles
	ld bc, $3
	call CopyData

	; place the 'already owned' pokeball tile
	; if the player owns the wild pokemon
	ld a, [wIsInBattle]
	dec a
	jr  nz, .notWildBattle
	push hl
	ld a, [wEnemyMonSpecies2]
	ld [wd11e], a
	callfar IndexToPokedex
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, $2
	ld hl, wPokedexOwned
	predef FlagActionPredef
	ld a, c
	and a
	jr z, .notOwned
	hlcoord 1, 1
	ld [hl], $E9
.notOwned
	pop hl
.notWildBattle
	hlcoord 1, 2
	ld de, $1
	ld a, $72
	jr PlaceHUDTiles

EnemyBattleHUDGraphicsTiles:
; The tile numbers for specific parts of the battle display for the enemy
	db $73 ; unused ($73 is hardcoded in the routine that uses these bytes)
	db $74 ; lower-left corner tile of the HUD
	db $78 ; lower-right triangle tile of the HUD

PlaceHUDTiles:
	ld [hl], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld a, [wHUDGraphicsTiles + 1] ; leftmost tile
	ld [hl], a
	ld a, 8
.loop
	add hl, de
	ld [hl], $76
	dec a
	jr nz, .loop
	add hl, de
	ld a, [wHUDGraphicsTiles + 2] ; rightmost tile
	ld [hl], a
	ret

SetupPlayerAndEnemyPokeballs:
	call LoadPartyPokeballGfx
	ld hl, wPartyMons
	ld de, wPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $50
	ld [hli], a
	ld [hl], $40
	ld a, 8
	ld [wHUDPokeballGfxOffsetX], a
	xor a
	ld [wdef5], a
	ld hl, wShadowOAM
	call WritePokeballOAMData
	ld hl, wEnemyMons
	ld de, wEnemyPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $50
	ld [hli], a
	ld [hl], $68
	ld a, $1
	ld [wdef5], a
	ld hl, wShadowOAMSprite06
	jp WritePokeballOAMData

; four tiles: pokeball, black pokeball (status ailment), crossed out pokeball (fainted) and pokeball slot (no mon)
PokeballTileGraphics::
	INCBIN "gfx/battle/balls.2bpp"
PokeballTileGraphicsEnd:
