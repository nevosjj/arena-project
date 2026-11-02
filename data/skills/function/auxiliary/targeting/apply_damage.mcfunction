#############################################################################
## Chiamata da skills:auxiliary/targeting/search_damage(_single)           ##
## Esecutore: il bersaglio (giocatore o evocazione) | Posizione: il finder ##
## Macro: storage arenaproject:game_memory targetSource (data del finder)  ##
#############################################################################

# Applicazione danno
$scoreboard players add @s ability_damage $(power)

# Flusso danni (giocatori: con origine del danno | evocazioni: flusso dedicato)
execute if entity @s[type=player] run function health:types/ability_damage with storage arenaproject:game_memory targetSource
execute if entity @s[tag=player_summon] run function health:summon/ability_damage

# Effetti legati alle abilità (insieme ai visual)
# Il finder è raggiungibile con @e[tag=target.source]
# Le righe che valgono solo per i giocatori vanno protette con @s[type=player]
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/damage_consequence with storage arenaproject:game_memory targetSource

# Morte evocazione (dopo la consequence, che può ancora riferirsi a lei)
execute if entity @s[tag=player_summon] if score @s summon.health matches ..0 run function health:summon/death
