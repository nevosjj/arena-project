##########################################
## Chiamata da recording:start_recording  ##
## La funzione prende l'ID di ogni       ##
## giocatore e comincia ad estrarre le   ##
## proprie info legate alla partita      ##
##########################################

## Salva l'ID del giocatore nello storage temporaneo e usa quell'ID come chiave
## per scrivere le abilità nella partita salvata, invece di trasformarlo in indice.

# Salva ID del giocatore
execute store result storage arenaproject:game_memory temp.ID int 1.0 run scoreboard players get @s ID

# Scrivi i dati statistiche appena ottenuti
function recording:transfer/stats with storage arenaproject:game_memory temp

# Scrivi i dati abilità appena ottenuti
function recording:transfer/abilities with storage arenaproject:game_memory temp