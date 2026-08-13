## Scorrimento per prendere la dimensione dell'array

# Aggiorna indice
execute store result storage arenaproject:game_memory temporary.randomSelection.index int 1.0 run scoreboard players get #array_dim temp

# Caso base
# Se ha finito, togli a 1 temp ad #array_dim, essendo che se no diventa out of bounds con la selezione random
$execute unless data storage ability_data:$(abilityType) skills[$(index)] run return run scoreboard players remove #array_dim temp 1

# temp++
scoreboard players add #array_dim temp 1

# Ricorsione
$execute if data storage ability_data:$(abilityType) skills[$(index)] run return run function selection:insertion/select/random/get_dim with storage ability_data:$(abilityType) temporary.randomSelection