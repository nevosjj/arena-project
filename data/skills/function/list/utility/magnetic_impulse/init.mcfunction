############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback visivo
summon marker ~ ~0.5 ~ {Tags:["magnetic_impulse.visual"]}
execute as @e[type=marker,distance=..4,tag=magnetic_impulse.visual,sort=nearest,limit=1] at @s run function skills:list/utility/magnetic_impulse/callee_visual

# Teletrasporto
execute as @e[type=marker,distance=..4,tag=magnetic_impulse.marker,limit=1,sort=nearest] at @s run function skills:list/utility/magnetic_impulse/teleport with entity @s data

# Uccisione marker
kill @e[type=marker,distance=..2,tag=magnetic_impulse.marker,limit=1,sort=nearest]