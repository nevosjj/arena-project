############################################################################
## Chiamata da skills:auxiliary/targeting/search_heal(_single)            ##
## Esecutore: il bersaglio | Posizione: il finder                         ##
## Macro: storage arenaproject:game_memory targetSource (data del finder) ##
############################################################################

# Applicazione cura
$scoreboard players add @s incoming_heal $(power)

# Flusso cure (con origine della cura)
function health:math/incoming_heal with storage arenaproject:game_memory targetSource

# Effetti legati alle abilità (insieme ai visual)
# Il finder è raggiungibile con @e[tag=target.source]
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/heal_consequence with storage arenaproject:game_memory targetSource
