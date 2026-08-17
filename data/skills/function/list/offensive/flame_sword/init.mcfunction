############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback
playsound minecraft:entity.guardian.death voice @a ~ ~ ~ 2 1
particle flame ~ ~1 ~ 0.3 0.6 0.3 0 15 force

# Imposta obiettivo del setup
tag @s add flame_sword.score

# Settaggio statistiche
execute as @e[type=marker,distance=..4,limit=1,tag=flame_sword.marker] at @s run function skills:list/offensive/flame_sword/setup with entity @s data

# Dai tag identificante del flame_sword
tag @s add flame_sword.energy

# Uccisione marker abilità
kill @e[type=marker,distance=..2,sort=nearest,limit=1,tag=flame_sword.marker]