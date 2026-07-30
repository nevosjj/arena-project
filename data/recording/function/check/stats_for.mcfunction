## Funzione ricorsiva di scorrimento giocatori

# Caso base
$execute unless data storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)] run return run data remove storage api.nevosjj.lobby:match_list temp

# Prendi dati del giocatore dall'indice
function recording:check/get_basic_info with storage api.nevosjj.lobby:match_list temp
# Immetti la testa del giocatore
function recording:check/player_head with storage api.nevosjj.lobby:match_list temp
# Prendi stataggiamento del giocatore dall'indice
function recording:check/get_stats with storage api.nevosjj.lobby:match_list temp
# Immetti l'stataggiamento del giocatore
function recording:check/put_stats with storage api.nevosjj.lobby:match_list temp

# Aggiorna indice
execute store result score #stat_index temp run data get storage api.nevosjj.lobby:match_list temp.playerIndex
scoreboard players add #stat_index temp 1
scoreboard players operation #stat_index temp2 = #stat_index temp
scoreboard players add #stat_index temp2 10
execute store result storage api.nevosjj.lobby:match_list temp.playerIndex int 1.0 run scoreboard players get #stat_index temp
execute store result storage api.nevosjj.lobby:match_list temp.playerIndexChest int 1.0 run scoreboard players get #stat_index temp2
scoreboard players reset #stat_index temp

# Ricorsione
function recording:check/stats_for with storage api.nevosjj.lobby:match_list temp