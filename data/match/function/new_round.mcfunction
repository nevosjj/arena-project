#################################################
## La funzione crea un ambiente per un nuovo round
## Chiamato da match:death
################################################

# Impostazione nuova vita dei giocatori morti
$execute as @a[tag=in_game] if score @s death matches 1.. run attribute @s max_health base set $(newLives)

# Impostazione oggetti
clear @a[tag=in_game]

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
scoreboard players reset @a player.hearts
execute as @a run scoreboard players operation @s stat.current_health = @s stat.max_health

# Rimozione permessi energia
scoreboard players set @a[tag=in_game] experience_timer 0
scoreboard players set @a[tag=in_game] experience_level 0
experience set @a[tag=in_game] 0 levels
tag @a[tag=in_game] remove energy.activated
tag @a[tag=in_game,tag=round.dead] remove round.dead

# Aggiornamento vita
execute as @a[tag=in_game] run function match:display/update