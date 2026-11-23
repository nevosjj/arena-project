##########################################################
## Chiamata da match:end/win                            ##
## Completa actual_match e la salva nello storage della ##
## lobby (api.nevosjj.lobby:match_list, 7 partite)      ##
##########################################################

# Durata della partita (orologio della sidebar)
execute store result storage match_recorder:data actual_match.duration.m int 1.0 run scoreboard players get #match match.minutes
execute store result storage match_recorder:data actual_match.duration.s int 1.0 run scoreboard players get #match match.seconds

# Durata media dei round
data modify storage match_recorder:data actual_match.avg_round.m set compute default integer recording:round/average_minutes
data modify storage match_recorder:data actual_match.avg_round.s set compute default integer recording:round/average_seconds

# Nome casuale della partita
function recording:actions/name_randomizer

# Indice dove salvare la partita
function recording:writing/get_index

# Giocatori (statistiche, abilità, vincitore)
execute as @a[tag=in_game] run function recording:transfer/player

# Rimozione dati usati solo per i calcoli
data remove storage match_recorder:data actual_match.round_count
data remove storage match_recorder:data actual_match.rounds_seconds

# Salvataggio nello storage della lobby
function recording:transfer/from_match_to_lobby with storage match_recorder:data actual_match
