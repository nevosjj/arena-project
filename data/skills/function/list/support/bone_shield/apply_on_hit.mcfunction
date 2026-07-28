# Feedback
$execute as @p[tag=owner_$(ID).bone_shield,limit=1,distance=..5] run tellraw @s [ \
    {"atlas":"minecraft:gui","sprite":"mob_effect/glowing"},\
    {"text":" > ","color":"dark_gray","bold":false},\
    {"text":"","color":"yellow","bold":false},\
    {"score":{objective:"incoming_damage","name":"@s"},"color":"yellow","bold":false},\
    {"text":" annullati,","color":"gray","bold":false},\
    {"text":" +","color":"green","bold":false},\
    {"score":{objective:"incoming_heal","name":"@s"},"color":"dark_green","bold":false},\
    {"text":" guariti.","color":"gray","bold":false},\
    ]

# Distruggi un osso
$execute as @e[type=block_display,tag=bone_shield.id$(ID),sort=random,limit=1,distance=..5] at @s run function skills:list/support/bone_shield/destroy

# Iterazione --counter.support
$scoreboard players remove @p[tag=owner_$(ID).bone_shield,limit=1,distance=..5] counter.support 1

# Controllo per reset
$execute as @p[tag=owner_$(ID).bone_shield,limit=1,distance=..5] if score @s counter.support matches ..0 \
    at @s run return run function skills:list/support/bone_shield/reset with entity @e[type=marker,tag=bone_shield.finder,limit=1,distance=..3] data

# Pulizia
kill @s