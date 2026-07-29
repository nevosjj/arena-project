# Creazione marker con i dati necessari (fine timer)

summon marker ~ ~1 ~ {Tags:[bone_shield.ender]}
execute as @e[type=marker,tag=bone_shield.ender,distance=..2,limit=1,sort=nearest] at @s run function skills:list/support/bone_shield/finder_timer