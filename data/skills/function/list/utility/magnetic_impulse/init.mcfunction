############
# INFO
# CHIAMATA DA skills/activations/research
############

# Tag di sicurezza
tag @s add magnetic_player

# Feedback visivo
summon marker ~ ~0.5 ~ {Tags:["magnetic_impulse.visual"]}
execute as @e[type=marker,distance=..4,tag=magnetic_impulse.visual] at @s run function skills:list/utility/magnetic_impulse/callee_visual

# Teletrasporto
execute as @e[type=marker,distance=..4,tag=magnetic_impulse.marker] at @s run function skills:list/utility/magnetic_impulse/teleport with entity @s data

# Rimozione tag di sicurezza
tag @s remove magnetic_player