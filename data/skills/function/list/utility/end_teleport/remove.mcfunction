##########################################################
## Chiamata da root:ticks/skills                        ##
## Esecutore: il giocatore con "end_teleport.speed"     ##
## Scala la durata della velocità, a 0 la toglie.       ##
## Reset anche in match:clean/skill_state               ##
##########################################################

execute unless score @s end_teleport.counter matches ..0 run return run scoreboard players remove @s end_teleport.counter 1

scoreboard players reset @s end_teleport.counter
attribute @s minecraft:movement_speed modifier remove end_teleport:speed
tag @s remove end_teleport.speed
