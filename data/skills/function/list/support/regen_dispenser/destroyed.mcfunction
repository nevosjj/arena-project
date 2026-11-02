#########################################################
## Chiamata da health:summon/destroyed                 ##
## Esecutore e posizione: la hitbox distrutta          ##
## Distruzione: feedback e visual eliminati.           ##
## La hitbox la elimina health:summon/death.           ##
#########################################################

# Feedback (al centro del dispenser, 0.3 sopra la hitbox)
particle block{block_state:"minecraft:dispenser"} ~ ~0.3 ~ 0.3 0.3 0.3 0.4 15 force
particle explosion ~ ~0.3 ~ 0 0 0 0 1 force
playsound entity.generic.explode player @a ~ ~ ~ 1 1.6
playsound entity.breeze.death player @a ~ ~ ~ 2 1.6

# Visual (al centro del dispenser)
execute positioned ~ ~0.3 ~ run kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
execute positioned ~ ~0.3 ~ run kill @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1]
