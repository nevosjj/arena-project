#########################################################
## Chiamata da match:events/powerup/announce           ##
## Macro: arenaproject:game_memory temporary.powerup   ##
## Tira a caso gli indici di tipo e punto. Con un solo ##
## elemento resta 1 (random vuole almeno 2 valori).    ##
#########################################################

# Tipo
$execute if data storage arenaproject:game_memory temporary.powerup.pool[1] store result storage arenaproject:game_memory temporary.powerup.typeIndex int 1 run random value 1..$(poolSize)

# Punto
$execute if data storage map_data:1v1 temporary.powerup_spawns[1] store result storage arenaproject:game_memory temporary.powerup.spawnIndex int 1 run random value 1..$(spawnSize)
