######################################################
## Chiamato da root:tick/1second                    ##
## La funzione aumenta di 1 secondo la durata       ##
## della partita e aggiorna lo stato                ##
######################################################

# Aumento secondi
scoreboard players add #match match.seconds 1

# Calcolo minuti
execute if score #match match.seconds matches 60.. run function match:display/time/get

# Immissione dati
execute store result storage arenaproject:game_memory displayTime.minutes int 1.0 run scoreboard players get #match match.minutes
execute store result storage arenaproject:game_memory displayTime.seconds int 1.0 run scoreboard players get #match match.seconds

# Controllo del doppio zero (per renderlo più fancy)
execute if score #match match.minutes matches ..9 run function match:display/time/fix_minutes with storage arenaproject:game_memory displayTime
execute if score #match match.seconds matches ..9 run function match:display/time/fix_seconds with storage arenaproject:game_memory displayTime

# Aggiornamento
function match:display/time/update with storage arenaproject:game_memory displayTime