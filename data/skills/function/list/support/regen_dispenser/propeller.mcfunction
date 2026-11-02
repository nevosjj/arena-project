##########################################################################
## Chiamata da skills:list/support/regen_dispenser/tick                 ##
## Esecutore e posizione: il visual (centro del dispenser), ogni 2 tick ##
## Elica: suono, rotazione delle pale e fumo bianco verso il basso.     ##
##########################################################################

# Suono
playsound minecraft:entity.breeze.idle_ground player @a ~ ~ ~ 0.25 1.8
playsound minecraft:block.scaffolding.step player @a ~ ~ ~ 0.5 0

# Rotazione: +60° ogni 2 tick, il client interpola grazie a teleport_duration:2 (~1,5 giri al secondo)
execute as @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1] at @s run rotate @s ~60 ~

# Fumo bianco spinto verso il basso, sotto le pale (punto più basso dell'oscillazione: -0.57).
# Con count 0 i tre valori dopo la posizione sono la DIREZIONE (0 -1 0 = giù) e il quarto la velocità.
particle white_smoke ~0.12 ~-0.6 ~ 0 -1 0 0.12 0 force
particle white_smoke ~-0.06 ~-0.6 ~0.1 0 -1 0 0.12 0 force
particle white_smoke ~-0.06 ~-0.6 ~-0.1 0 -1 0 0.12 0 force
