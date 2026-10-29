############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback
playsound block.piston.extend hostile @a ~ ~ ~ 2 0.8

# Tag di sicurezza
tag @s add switch_user

# Target
execute as @e[type=marker,tag=switch.marker,distance=..2,limit=1,sort=nearest] at @s \
    run function skills:list/utility/switch/target with entity @s data

# Rimozione tag di sicurezza
tag @s remove switch_user