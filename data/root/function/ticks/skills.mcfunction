# Bone shield
execute if entity @e[type=block_display,tag=bone_shield.visual,distance=..128] as @e[type=block_display,tag=bone_shield.visual] at @s run function skills:list/support/bone_shield/tick with entity @s data

# Cookie blaster
execute if entity @e[type=item,tag=cookie.projectile,tag=ready,distance=..128] as @e[type=item,tag=cookie.projectile,tag=ready] at @s run \
function skills:list/offensive/cookie_blaster/tick with entity @s data

# Freeze breath
execute if entity @a[tag=freeze_breath.slowed,distance=..128] as @a[tag=freeze_breath.slowed] at @s run function skills:list/offensive/freeze_breath/remove

# Lightning strike
execute if entity @e[type=marker,tag=lightning_strike.loading,distance=..128] as @e[type=marker,tag=lightning_strike.loading] at @s run \
    function skills:list/offensive/lightning_strike/tick with entity @s data
execute if entity @a[tag=lightning_strike.immobilized] as @a[tag=lightning_strike.immobilized] at @s run function skills:list/offensive/lightning_strike/remove