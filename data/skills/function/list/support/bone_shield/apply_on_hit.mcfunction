# Distruggi un osso
$execute as @e[type=block_display,tag=bone_shield.id$(ID),sort=random,limit=1,distance=..5] at @s run function skills:list/support/bone_shield/destroy

# Iterazione --counter.support
$scoreboard players remove @p[tag=owner_$(ID).bone_shield,limit=1,distance=..5] counter.support 1

# Controllo per reset
$execute as @p[tag=owner_$(ID).bone_shield,limit=1,distance=..5] if score @s counter.support matches ..0 \
    at @s run return run function skills:list/support/bone_shield/reset with entity @e[type=marker,tag=bone_shield.finder,limit=1,distance=..3] data

# Pulizia
kill @s