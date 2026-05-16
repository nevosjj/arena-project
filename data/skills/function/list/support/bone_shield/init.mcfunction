############
# INFO
# CHIAMATA DA skills/activations/marker
############

# Tag
tag @s add skill.bone_shield

# Setup
execute as @e[type=marker,distance=..4,tag=bone_shield.marker] at @s run function skills:list/support/bone_shield/setup with entity @s data