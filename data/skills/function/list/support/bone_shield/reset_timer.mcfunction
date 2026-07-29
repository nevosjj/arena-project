########
# chiamata da skills:list/support/bone_shield/finder_timer
# appena il count degli scheletri è 0
########

# Resetta quantità teschi
scoreboard players reset @s counter.support

# Resetta timer abilità
scoreboard players reset @s duration.support

# Rimuovi tag generico
tag @s remove skill.bone_shield

# Rimuovi tutti i teschi
$execute as @e[type=block_display,tag=bone_shield.id$(ID),distance=..5] \
    at @s run function skills:list/support/bone_shield/destroy

# Rimuovi tag specifico dell'ID
$tag @s remove owner_$(ID).bone_shield

# Rimuovi score difesa
scoreboard players remove @s stat.defense 50

# Feedback
playsound entity.skeleton.death player @a ~ ~ ~ 2 0.8
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4
particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100 force
kill @e[type=marker,distance=..3,limit=1,sort=nearest,tag=bone_shield.ender]