##########################
# Chiamata da: match:finish_match
##########################

# Caso base
execute if score #match match.duration matches ..59 run return run function recording:time/finish

# Calcola ricorsivamente questa funzione per calcolare ogni 60s un minuto, poi smette se è minore di 60s
execute if score #match match.duration matches 60.. run function recording:time/get_minutes

say ricorsione 
# Ricorsione
function recording:time/recursive_time