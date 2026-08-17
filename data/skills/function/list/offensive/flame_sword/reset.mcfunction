scoreboard players reset @s duration.offensive
scoreboard players reset @s duration.offensive2
scoreboard players reset @s counter.offensive
scoreboard players reset @s counter.offensive2
attribute @s minecraft:entity_interaction_range modifier remove flame_sword:range
tag @s remove flame_sword.energy
playsound block.fire.extinguish ambient @a ~ ~ ~ 2 1.1
particle large_smoke ~ ~1 ~ 1 1 1 0 50 force