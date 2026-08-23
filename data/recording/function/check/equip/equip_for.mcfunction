## Funzione ricorsiva di scorrimento giocatori

# Caso base
$execute unless data storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)] run return run data remove storage api.nevosjj.lobby:match_list temp

# Prendi dati del giocatore dall'indice
function recording:check/auxiliary/get_basic_info with storage api.nevosjj.lobby:match_list temp
# Immetti la testa del giocatore
function recording:check/auxiliary/player_head with storage api.nevosjj.lobby:match_list temp
# Prendi equipaggiamento del giocatore dall'indice
function recording:check/equip/get_equip with storage api.nevosjj.lobby:match_list temp
# Immetti l'equipaggiamento del giocatore
function recording:check/equip/put_equip with storage api.nevosjj.lobby:match_list temp

# Aggiorna indice
execute store result score #equip_index temp run data get storage api.nevosjj.lobby:match_list temp.playerIndex
scoreboard players add #equip_index temp 1
scoreboard players operation #equip_index temp2 = #equip_index temp
scoreboard players add #equip_index temp2 10
execute store result storage api.nevosjj.lobby:match_list temp.playerIndex int 1.0 run scoreboard players get #equip_index temp
execute store result storage api.nevosjj.lobby:match_list temp.playerIndexChest int 1.0 run scoreboard players get #equip_index temp2
scoreboard players reset #equip_index temp

# Ricorsione
function recording:check/equip/equip_for with storage api.nevosjj.lobby:match_list temp