############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback sonoro
playsound block.crafter.craft ui @s ~ ~ ~ 2 1

# Target
execute as @e[type=marker,tag=lightning_strike.marker,distance=..2,limit=1,sort=nearest] at @s \
    run function skills:list/offensive/lightning_strike/target with entity @s data