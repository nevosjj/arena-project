# Creazione marker con i dati necessari (dopo una hit ricevuta)

summon marker ~ ~1 ~ {Tags:[bone_shield.finder]}
execute as @e[type=marker,tag=bone_shield.finder,distance=..2,limit=1,sort=nearest] at @s run function skills:list/support/bone_shield/finder