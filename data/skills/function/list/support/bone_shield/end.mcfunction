##################################################
## Chiamata da bone_shield/apply_on_hit (teschi ##
## finiti) || bone_shield/finder_timer (durata) ##
## Esecutore: il caster                         ##
## Macro: data del marker finder/ender (ID)     ##
## Unica fine dello scudo osseo                 ##
## Cura: heal x teschi rimasti, prima del reset ##
##################################################

# Ricarica
function skills:cooldowns/delayed/start {skillTYPE_txt:"support",hotbarIndex:2}

# Cura per ogni teschio rimasto (solo se vivo)
$execute if entity @s[tag=!round.dead] run function skills:list/support/bone_shield/heal with storage arenaproject:game_memory bone_shield.id$(ID)
$data remove storage arenaproject:game_memory bone_shield.id$(ID)

# Resetta quantità teschi
scoreboard players reset @s counter.support

# Resetta timer abilità
scoreboard players reset @s duration.support

# Rimuovi tag generico
tag @s remove skill.bone_shield

# Rimuovi tutti i teschi rimasti
$execute as @e[type=block_display,tag=bone_shield.id$(ID),distance=..5] \
    at @s run function skills:list/support/bone_shield/destroy

# Rimuovi tag specifico dell'ID
$tag @s remove owner_$(ID).bone_shield

# Rimuovi difesa abilità
scoreboard players reset @s stat.ability_defense

# Feedback
playsound entity.skeleton.death player @a ~ ~ ~ 2 0.8
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4
particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100 force

# Marker di ricerca (colpo o fine durata)
kill @e[type=marker,distance=..3,limit=1,sort=nearest,tag=bone_shield.finder]
kill @e[type=marker,distance=..3,limit=1,sort=nearest,tag=bone_shield.ender]
