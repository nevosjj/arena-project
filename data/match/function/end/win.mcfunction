#############################################
## La funzione imposta l'ambiente per celebrare la vittoria di un giocatore
## Crea un stopwatch per ritardare il ritorno in lobby
##############################################

# Identificazione vincitore
## NON FUNZIONA BENE, SOLO 1V1

# Creazione stopwatch
stopwatch create match:win_break

# Feedback audio
execute as @a at @s run playsound ui.toast.challenge_complete voice @s ~ ~ ~ 1 0.9

# Feedback testo

## REGISTRAZIONE PARTITA
# Calcolo tempo
function recording:actions/start_recording

# Pulizia
execute as @a[tag=in_game] run function match:end/cleanup