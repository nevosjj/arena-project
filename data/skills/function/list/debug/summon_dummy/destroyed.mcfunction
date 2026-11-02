# DEBUG TEMPORANEO (Fase 3)
# Esecutore e posizione: il cervello
particle explosion ~ ~1 ~ 0 0 0 0 1 force
playsound entity.generic.explode player @a ~ ~ ~ 1 1.5
kill @e[type=armor_stand,tag=summon_dummy.visual,distance=..1,limit=1,sort=nearest]
tellraw @a[tag=debug] [{"text":">>> ","color":"red","bold":true},{"text":"summon_dummy distrutto","color":"gray","bold":false}]
function skills:auxiliary/summon/kill
