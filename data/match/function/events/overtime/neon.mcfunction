###############################################
## Chiamato da match:events/overtime         ##
## La funzione cambia il colore del titolo   ##
## ad intermittenza dell'overtime            ##
###############################################

# Veleno
execute as @a[tag=in_game] if score @s stat.current_health matches 2.. at @s run function match:events/overtime/poison

# Controllo (bianco)
$execute if score #overtime counter matches 2 run scoreboard players display name .overtime game_display [{"text":">> ","color":"dark_red","bold":true},{"text":"ᴏᴠᴇʀᴛɪᴍᴇ +$(overtimeDamage)%","color":"red","bold":false},{"text":" <<","color":"dark_red","bold":true}]
execute if score #overtime counter matches 2 run return run scoreboard players remove #overtime counter 1

# Controllo (rosso)
$execute if score #overtime counter matches 1 run scoreboard players display name .overtime game_display [{"text":">> ","color":"dark_red","bold":true},{"text":"ᴏᴠᴇʀᴛɪᴍᴇ +$(overtimeDamage)%","color":"white","bold":false},{"text":" <<","color":"dark_red","bold":true}]
execute if score #overtime counter matches 1 run return run scoreboard players add #overtime counter 1