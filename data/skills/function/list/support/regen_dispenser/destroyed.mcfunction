#########################################################
## Chiamata da health:summon/destroyed                 ##
## Esecutore e posizione: il cervello                  ##
## Distruzione: feedback, visual e cervello eliminati. ##
#########################################################

# Feedback
particle block{block_state:"minecraft:dispenser"} ~ ~ ~ 0.3 0.3 0.3 0.4 15 force
particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode player @a ~ ~ ~ 1 1.6
playsound entity.breeze.death player @a ~ ~ ~ 2 1.6

# Pulizia (la hitbox la elimina health:summon/death)
kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
function skills:auxiliary/summon/kill
