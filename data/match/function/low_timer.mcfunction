# Bossbar timer
bossbar set match:timer name [{"text":"Apertura imminente!","color":"red"}]
bossbar set match:timer color red

# Settaggio del contatore nel caso venisse forzato (se scorre naturalmente queste non influenzano niente)
scoreboard players set #match counter 5
bossbar set match:timer value 5

# Se c'è almeno un giocatore che NON ha selezionato tutte le abilità, allora metti quelle default (indice 0 per ogni tipo)
execute unless score #match temp = #match player.amount as @a[tag=!done_selecting] run function selection:insertion/select/default
tag @a remove done_selecting

# Stopwatches
stopwatch remove match:first_timer
stopwatch create match:opening

# Feedback di testo
tellraw @a [{"text":"TIMER","color":"red","bold":false}, \
    {"text":" > ","color":"dark_gray","bold":true}, \
        {"text":" I cancelli aprono in 5s.","color":"gray","bold":false}]
title @a times 5 10 5
title @a title [{"text":" "}]
title @a subtitle [{"text":"Apertura in 5s","color":"red"}]

# Feedback sonoro
execute as @a[tag=in_game] at @s run playsound block.dispenser.dispense ui @s ~ ~ ~ 1 1.3

# Pulizia
execute at @s run function selection:insertion/minecart/kill
clear @a[tag=in_game] chest

# Aggiornamento
bossbar add match:timer [{"text":"Apertura","color":"red"}]