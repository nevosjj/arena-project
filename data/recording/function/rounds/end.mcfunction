###########################################################
## Chiamata da match:events/round_pause || match:end/win ##
## Fine del round: salva la sua durata e la somma al     ##
## totale per la media (actions/start_recording)         ##
## Scrive il vincitore e l'evento round_end (timestamps) ##
###########################################################

# Durata
execute store result storage match_recorder:data actual_match.rounds[-1].duration.m int 1.0 run scoreboard players get #match round.minutes
execute store result storage match_recorder:data actual_match.rounds[-1].duration.s int 1.0 run scoreboard players get #match round.seconds

# Totale in secondi di tutti i round
data modify storage match_recorder:data actual_match.rounds_seconds set compute default integer recording:round/total_seconds

# Vincitore e fine del round (timestamps)
# I tag round.winner non ci sono ancora: round_pause li mette dopo
data modify storage match_recorder:data event set value {event:"round_end"}
execute as @a[tag=in_game] unless score @s death matches 1.. run function recording:timestamps/winner
function recording:timestamps/add
data remove storage match_recorder:data name
