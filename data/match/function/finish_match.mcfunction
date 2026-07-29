# Calcolo tempo partita
function recording:time/recursive_time

# Ritorno in lobby e feedback (debug per ora)
tp @a 22 -54 8 90 0
tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Partita finita!","color":"gold","bold":false}]
execute as @a at @s run playsound ui.toast.challenge_complete voice @s ~ ~ ~ 10 0.9

# Filla aria
fill 39 -14 48 142 -40 -42 air

# Ristorazione interaction in lobby
tag @e[type=interaction,tag=matchmaking.1v1] remove can_spectate

## PULIZIA
scoreboard objectives setdisplay below_name
clear @a
data remove storage arenaproject:map_data temporary
data remove storage arenaproject:compact_game_memory players
data remove storage arenaproject:game_memory players
stopwatch remove match:break
stopwatch remove match:sound
stopwatch remove match:overtime
kill @e[type=marker]
tag @a remove energy.activated
tag @a remove support_down
tag @a remove utility_down
tag @a remove ultimate_down
tag @a remove freeze_breath.slowed
scoreboard players reset #match
scoreboard players reset #memory
scoreboard players reset #constant.100
scoreboard players reset #damage_halver
scoreboard players reset @a
experience set @a 0 levels
execute as @a[tag=in_game] run attribute @s minecraft:attack_damage base set 0.0
execute as @a[tag=in_game] run attribute @s minecraft:knockback_resistance base set 1.0
execute as @a[tag=in_game] run attribute @s minecraft:movement_speed modifier remove freeze_breath:slow
execute as @a[tag=in_game] run attribute @s minecraft:movement_speed modifier remove lightning_strike:jump
execute as @a[tag=in_game] run attribute @s minecraft:movement_speed modifier remove lightning_strike:slow
effect give @a instant_health 1 255 true
tag @a remove in_game
function match:cleanup


## REGISTRAZIONE PARTITA

# Impostazione nome random match recorder
function recording:name_randomizer

# Ottieni indice dove salvare la partita
function recording:writing/get_index

# Copia i dati del match allo storage del salvapartite
function recording:writing/storage with storage match_recorder:data actual_match
function recording:writing/texture with storage match_recorder:data actual_match
function recording:writing/name with storage match_recorder:data actual_match
function recording:writing/lore with storage match_recorder:data actual_match

# Pulizia match recorder
data remove storage match_recorder:data actual_match