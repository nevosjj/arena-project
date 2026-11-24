############################################################
## Chiamata da match:events/powerup/types/berserk/pick    ##
## Esecutore: il giocatore                                ##
## Dà il tag powerup.berserk: finché c'è, i suoi danni    ##
## (melee e abilità) prendono +bonus% (health:damage/     ##
## berserk). Crea il marker degli anelli con il suo ID.   ##
############################################################

# Stato: il tag attiva il +bonus% (health:damage/berserk)
tag @s add powerup.berserk

# Marker degli anelli
execute store result storage arenaproject:game_memory temporary.berserk.ID int 1 run scoreboard players get @s ID
execute at @s run function match:events/powerup/types/berserk/summon_visual with storage arenaproject:game_memory temporary.berserk
data remove storage arenaproject:game_memory temporary.berserk

# Feedback
execute at @s run playsound entity.ravager.roar player @a ~ ~ ~ 2 1.7
execute at @s run playsound minecraft:block.trial_spawner.ambient_ominous player @a ~ ~ ~ 2 1.6