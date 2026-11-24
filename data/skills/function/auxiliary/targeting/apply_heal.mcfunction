############################################################################
## Chiamata da skills:auxiliary/targeting/search_heal(_single)            ##
## Esecutore: il bersaglio | Posizione: il finder                         ##
## Macro: storage arenaproject:game_memory targetSource (data del finder) ##
## regen_heal:1b -> $(power) nella pool di rigenerazione                  ##
## altrimenti    -> $(power) come cura istantanea                         ##
############################################################################

# Cura rigenerativa
execute if data storage arenaproject:game_memory targetSource{regen_heal:1b} run function health:regeneration/add with storage arenaproject:game_memory targetSource

# Cura istantanea
$execute unless data storage arenaproject:game_memory targetSource{regen_heal:1b} run scoreboard players add @s incoming_heal $(power)
execute unless data storage arenaproject:game_memory targetSource{regen_heal:1b} run function health:math/incoming_heal with storage arenaproject:game_memory targetSource

# Effetti legati alle abilità (insieme ai visual)
# Il finder è raggiungibile con @e[tag=target.source]
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/heal_consequence with storage arenaproject:game_memory targetSource
