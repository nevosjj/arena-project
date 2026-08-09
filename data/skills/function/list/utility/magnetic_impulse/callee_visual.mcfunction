# Suono
playsound entity.zombie_villager.cure player @a ~ ~ ~ 0.25 1.5
playsound minecraft:block.sculk_sensor.clicking_stop voice @a ~ ~ ~ 2 0.8
playsound minecraft:block.bubble_column.whirlpool_inside voice @s ~ ~ ~ 2 0.7

# Eredità
# distanceOrigin è unico di magnetic_impulse
scoreboard players set @s temp 100
data modify entity @s data.scale set value 100
data modify entity @s data.distanceOrigin set from entity @e[type=marker,distance=..3,limit=1,sort=nearest,tag=magnetic_impulse.marker] data.abilityRange
data modify entity @s data.distance set from entity @s data.distanceOrigin
tp @s ~ ~3 ~
# Chiamata funzione visual
execute at @s run function skills:list/utility/magnetic_impulse/visual with entity @s data