###########################################################
## Chiamata da match:events/powerup/spawn                ##
## Esecutore e posizione: il marker in anteprima         ##
## Macro: i data del marker (type)                       ##
## Il potenziamento appare con il visual del suo tipo.   ##
###########################################################

# Un solo potenziamento in campo
kill @e[type=block_display,tag=powerup.visual]
kill @e[type=marker,tag=powerup.active]

# Stato
tag @s remove powerup.incoming
tag @s add powerup.active

# Animazione (39: la fluttuazione parte al primo tick)
scoreboard players set @s powerup.anim_timer 39

# Visual del tipo
$function match:events/powerup/types/$(type)/visual

# Feedback
particle firework ~ ~0.8 ~ 0.1 0.1 0.1 0.15 40 force
playsound block.trial_spawner.spawn_item ambient @a ~ ~ ~ 2 1.4

# Sidebar
function match:display/powerup/field
