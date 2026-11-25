###############################################################
## Chiamata da skills:list/utility/switch/end                ##
## Esecutore e posizione: il bersaglio dello scambio         ##
## Macro: duration (tick di stordimento)                     ##
## Immobilizza il bersaglio se lo scambio era abbastanza     ##
## lungo (switch.stun_pending, messo in end).                ##
###############################################################

# Rimozione tag temporaneo
tag @s remove switch.stun_pending

# Feedback
playsound minecraft:item.trident.return voice @a ~ ~ ~ 2 0.8

# Stordimento
$scoreboard players set @s switch.counter $(duration)
tag @s add switch.stunned
attribute @s minecraft:movement_speed modifier add switch:stun -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add switch:stun -1 add_multiplied_total
