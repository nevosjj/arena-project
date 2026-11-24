############################################################################
## Chiamata da skills:auxiliary/targeting/search_heal(_single)            ##
## Esecutore: il bersaglio | Posizione: il finder                         ##
## Macro: storage arenaproject:game_memory targetSource (data del finder) ##
############################################################################

# Applicazione cura
$scoreboard players add @s incoming_heal $(power)

# Flusso cure
function health:math/incoming_heal with storage arenaproject:game_memory targetSource

# Cura rigenerativa
execute if data storage arenaproject:game_memory targetSource.regenPower run data modify storage arenaproject:game_memory regen.add set from storage arenaproject:game_memory targetSource.regenPower
execute if data storage arenaproject:game_memory targetSource.regenPower run function health:regeneration/add

# Effetti legati alle abilità (insieme ai visual)
# Il finder è raggiungibile con @e[tag=target.source]
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/heal_consequence with storage arenaproject:game_memory targetSource
