# Aggiungimento di round al giocatore che ha vinto.
execute as @a[tag=in_game] unless score @s death matches 1.. run scoreboard players add @s rounds 1

# Controllo che la partita non sia finita
execute as @a[tag=in_game] unless score @s death matches 1.. if score @s rounds >= #match rounds run return run function match:finish_match

# Impostazione oggetti
clear @a
item replace entity @a hotbar.4 with chest

# Teletrasporto
function match:teleport with storage map_data:1v1 temporary

# Chiusura cancelli
function match:bars with storage map_data:1v1 temporary

# Stopwatch apertura cancelli
stopwatch create match:break
stopwatch create match:sound

# Punteggio timer
scoreboard players set #match counter 10

# Bossbar
bossbar add match:timer [{"text":"Apertura","color":"red"}]
bossbar set match:timer color red
bossbar set match:timer max 10
bossbar set match:timer players @a[tag=in_game]
bossbar set match:timer value 10
bossbar set match:timer visible true

# Rimozione overtime
stopwatch remove match:overtime

# Cleanup eventuale di skill
function match:skill_cleanup

# Reset
scoreboard players reset #match multiplier
scoreboard players reset @a death
scoreboard players reset @a cooldown.support_timer
scoreboard players reset @a cooldown.utility_timer
scoreboard players reset @a cooldown.ultimate_timer
execute as @a run scoreboard players operation @s stat.current_health = @s stat.max_health

# Rimozione permessi energia
scoreboard players set @a[tag=in_game] experience_timer 0
scoreboard players set @a[tag=in_game] experience_level 0
experience set @a[tag=in_game] 0 levels
tag @e[tag=in_game] remove energy.activated