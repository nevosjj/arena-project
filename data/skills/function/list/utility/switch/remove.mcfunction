#############################################################
## Chiamata da root:ticks/skills                           ##
## Esecutore e posizione: un giocatore stordito da Scambio ##
## Scala il contatore e, a 0, rimuove lo stordimento.      ##
#############################################################

execute unless score @s switch.counter matches ..0 run return run scoreboard players remove @s switch.counter 1

scoreboard players reset @s switch.counter
attribute @s minecraft:movement_speed modifier remove switch:stun
attribute @s minecraft:jump_strength modifier remove switch:stun
tag @s remove switch.stunned
