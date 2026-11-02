############
# INFO
# CHIAMATA DA skills:auxiliary/targeting/search_damage(_single)
# Esecutore: il bersaglio | Posizione: il finder
# Macro: storage arenaproject:game_memory targetSource (data del finder)
############

# Applicazione danno
$scoreboard players add @s ability_damage $(power)

# Flusso danni (con origine del danno)
function health:types/ability_damage with storage arenaproject:game_memory targetSource

# Effetti legati alle abilità (insieme ai visual)
# Il finder è raggiungibile con @e[tag=target.source]
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/damage_consequence with storage arenaproject:game_memory targetSource
