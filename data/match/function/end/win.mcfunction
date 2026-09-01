#############################################
## La funzione imposta l'ambiente per celebrare la vittoria di un giocatore
## Crea un stopwatch per ritardare il ritorno in lobby
##############################################

# Identificazione vincitore
## NON FUNZIONA BENE, SOLO 1V1

# Ferma l'overtime
function match:events/overtime/stop

# Creazione stopwatch
stopwatch create match:win_break

# Feedback audio
execute as @a at @s run playsound ui.toast.challenge_complete voice @s ~ ~ ~ 1 0.9

# Feedback testo
title @a times 10 80 10
execute as @a[tag=in_game] unless score @s death matches 1.. run tag @s add game.winner
title @a title [{"text":"II ","obfuscated":true},{"selector":"@e[type=player,tag=game.winner]","color":"gold","bold":true,"obfuscated":false},{"text":" II","obfuscated":true}]
title @a subtitle [{"text":"ha vinto la partita!","color":"dark_gray"}]
tellraw @a [{"text":"VINCITORE","bold":true,"color":"dark_gray"},{"text":" >> ","color":"gray","bold":false}, \
    {"selector":"@e[type=player,tag=game.winner]","color":"gold","bold":false},\
    {"text":"!","color":"gray","bold":false}]

## REGISTRAZIONE PARTITA
# Calcolo tempo
function recording:actions/start_recording

# Pulizia
execute as @a[tag=in_game] run function match:end/cleanup