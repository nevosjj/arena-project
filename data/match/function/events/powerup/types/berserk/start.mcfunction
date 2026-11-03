#########################################################
## Chiamata da match:events/powerup/types/berserk/pick ##
## Esecutore: il giocatore                             ##
## Applica il bonus e crea il marker degli anelli con  ##
## lo stesso ID del giocatore.                         ##
#########################################################

# Bonus melee
scoreboard players add @s stat.attack 5
tag @s add powerup.berserk

# Marker degli anelli
execute store result storage arenaproject:game_memory temporary.berserk.ID int 1 run scoreboard players get @s ID
execute at @s run function match:events/powerup/types/berserk/summon_visual with storage arenaproject:game_memory temporary.berserk
data remove storage arenaproject:game_memory temporary.berserk

# Feedback
execute at @s run playsound entity.ravager.roar player @a ~ ~ ~ 2 1.7
execute at @s run playsound minecraft:block.trial_spawner.ambient_ominous player @a ~ ~ ~ 2 1.6