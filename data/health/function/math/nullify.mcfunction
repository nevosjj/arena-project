###################################################################
## La funzione annulla tutti i danni in caso il round sia finito ##
###################################################################

# Feedback
tellraw @s [{"text":"DANNO ANNULLATO","color":"gold","bold":true}]

# Pulizia
scoreboard players reset @s melee_damage
scoreboard players reset @s ability_damage
scoreboard players reset @s incoming_damage
data remove storage arenaproject:game_memory damageFeedback