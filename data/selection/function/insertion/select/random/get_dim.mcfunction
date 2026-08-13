## Scorrimento per prendere la dimensione dell'array

## Scorrimento per prendere la dimensione dell'array

# Caso base
execute store result score #current_index temp run data get storage arenaproject:game_memory temporary.randomSelection.index
$execute unless data storage ability_data:$(abilityType) skills[$(index)] run return run scoreboard players remove #array_dim temp 1

# temp++
scoreboard players add #array_dim temp 1
execute store result storage arenaproject:game_memory temporary.randomSelection.index int 1.0 run scoreboard players get #array_dim temp

# Ricorsione - passa storage, non macro
function selection:insertion/select/random/get_dim with storage arenaproject:game_memory temporary.randomSelection