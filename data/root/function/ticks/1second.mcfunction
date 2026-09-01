# Ricariche--
execute as @a[tag=in_game,tag=utility_down] run function skills:cooldowns/utility
execute as @a[tag=in_game,tag=support_down] run function skills:cooldowns/support
execute as @a[tag=in_game,tag=ultimate_down] run function skills:cooldowns/ultimate

# Update del tempo sulla sidebar
function match:display/time/check

# Controllo colore overtime
execute if score #overtime bool matches 1 run function match:events/overtime/neon with storage match_data:1v1 list.1v1

# Actionbar in-game
execute as @a[tag=in_game] run function health:auxiliary/actionbar

# Durata partita++
execute if score #match bool matches 1 run scoreboard players add #match match.duration 1

# Debug fame, toglierò quando il gioco sarà completo
execute as @a[tag=in_game] if score @s stat.hunger matches ..19 run effect give @s saturation 1 0 true

############################################################
## Controllo che i giocatori scendono sotto una certa y   ##
############################################################

execute as @e[type=player,distance=..128,tag=in_game,tag=!round.dead] at @s run function health:deaths/void with storage map_data:1v1 temporary