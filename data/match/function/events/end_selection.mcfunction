# Rimozione cancelli
function match:map_editor/open with storage map_data:1v1 temporary

# Distribuzione oggetti da combattimento
clear @a
execute as @a run function skills:auxiliary/sword/give {reach:3.0}
item replace entity @a hotbar.1 with red_stained_glass_pane[minecraft:attack_range={max_reach:3.0f},custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]
item replace entity @a hotbar.2 with red_stained_glass_pane[minecraft:attack_range={max_reach:3.0f},custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]
item replace entity @a hotbar.3 with red_stained_glass_pane[minecraft:attack_range={max_reach:3.0f},custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]

# Ricarica iniziale
scoreboard players set @a[tag=in_game] cooldown.support_timer 5
scoreboard players set @a[tag=in_game] cooldown.utility_timer 5
execute as @a[tag=in_game] run scoreboard players operation @s cooldown.ultimate_timer = @s cooldown.ultimate
tag @a[tag=in_game] add utility_down
tag @a[tag=in_game] add support_down
tag @a[tag=in_game] add ultimate_down

# Rimozione orologio
stopwatch remove match:first_timer
stopwatch remove match:break
stopwatch remove match:sound
stopwatch remove match:map_editor/opening

# Reset
scoreboard players reset #match counter
scoreboard players reset #match temp

# Rimozione bossbar
bossbar remove match:timer

# Aggiunta orologio overtime
stopwatch create match:overtime

# Ciclo dei potenziamenti
function match:events/powerup/logic/start

# Registrazione: inizio del round
function recording:rounds/start

# Feedback
tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Combattete!","color":"red","bold":false}]
execute as @a at @s run playsound entity.ender_dragon.ambient voice @s ~ ~ ~ 1 0.9

# Permesso all'energia ai giocanti
tag @a[tag=in_game] add energy.activated

# Rimozione tag selezione
tag @a[tag=in_game] remove selecting
tag @a[tag=in_game] remove must_select.offensive
tag @a[tag=in_game] remove must_select.utility
tag @a[tag=in_game] remove must_select.support
tag @a[tag=in_game] remove must_select.ultimate