###########################################################################
## Chiamata da recording:actions/start_recording e da sé stessa          ##
## Converte ricorsivamente la durata della partita in minuti (ogni 60s). ##
###########################################################################

# Caso base
execute if score #match match.duration matches ..59 run return run function recording:time/finish

# Calcola ricorsivamente questa funzione per calcolare ogni 60s un minuto, poi smette se è minore di 60s
execute if score #match match.duration matches 60.. run function recording:time/get_minutes

# Ricorsione
function recording:time/recursion_time
