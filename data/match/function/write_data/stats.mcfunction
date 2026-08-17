#########
# chiamata da match:id_search
#########

# Inserisci nell'elemento della partita le statistiche dagli score.
$execute store result storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].stats.heal_received int 1.0 run scoreboard players get @s poststat.heal_received
$execute store result storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].stats.melee_done int 1.0 run scoreboard players get @s poststat.melee_inflicted
$execute store result storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].stats.damage_halved int 1.0 run scoreboard players get @s poststat.damage_halved
$execute store result storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].stats.damage_received int 1.0 run scoreboard players get @s poststat.damage_received
$execute store result storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].stats.best_combo int 1.0 run scoreboard players get @s poststat.best_combo