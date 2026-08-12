# Valuta il match.duration rimanente a secondi

scoreboard players operation #match match.seconds = #match match.duration

# Immagazzina nello storage nel recorder

execute store result storage match_recorder:data temptime.minutes int 1.0 run scoreboard players get #match match.minutes
execute store result storage match_recorder:data temptime.seconds int 1.0 run scoreboard players get #match match.seconds

# Chiama la funzione con le informazioni ricavate
function recording:time/write with storage match_recorder:data temptime