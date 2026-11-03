# Feedback
playsound minecraft:entity.guardian.hurt voice @a ~ ~ ~ 10 0.7
playsound minecraft:entity.skeleton_horse.ambient voice @a ~ ~ ~ 10 0.7

# Pulizia per evitare dati fantasma
scoreboard players reset @s temp2
scoreboard players reset @s temp3

# Assegnazione ID a ciascun teschio per la ricerca TP
$execute store result score @e[type=block_display,distance=..5,tag=bone_shield.id$(ID)] ID run data get entity @s data.ID

# Uccisione
kill @s