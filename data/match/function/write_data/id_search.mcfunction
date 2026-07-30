########
# chiamata da finish_match
########

## Salva l'ID del giocatore nello storage temporaneo e usa quell'ID come chiave
## per scrivere le abilità nella partita salvata, invece di trasformarlo in indice.

# Salva ID del giocatore
execute store result storage arenaproject:game_memory temp.ID int 1.0 run scoreboard players get @s ID

# Scrivi i dati statistiche appena ottenuti
function match:write_data/stats with storage arenaproject:game_memory temp

# Scrivi i dati abilità appena ottenuti
function match:write_data/abilities with storage arenaproject:game_memory temp