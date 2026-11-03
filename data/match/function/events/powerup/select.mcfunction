#############################################################
## Chiamata da match:events/powerup/announce               ##
## Macro: arenaproject:game_memory temporary.powerup       ##
## Copia il tipo e le coordinate scelti (indici negativi). ##
#############################################################

$data modify storage arenaproject:game_memory temporary.powerup.type set from storage arenaproject:game_memory temporary.powerup.pool[-$(typeIndex)].name
$data modify storage arenaproject:game_memory temporary.powerup.pos set from storage map_data:1v1 temporary.powerup_spawns[-$(spawnIndex)]
