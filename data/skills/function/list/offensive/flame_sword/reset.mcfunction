# Reset punteggio
scoreboard players reset @s duration.offensive
scoreboard players reset @s duration.offensive2
scoreboard players reset @s counter.offensive
scoreboard players reset @s counter.offensive2

# Visuale della fine
summon marker ~ ~1 ~ {Tags:["flame_sword.end_visual"]}
scoreboard players set @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.end_visual] temp 0
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.end_visual] at @s run function skills:list/offensive/flame_sword/visual_smoke

# Rimozione attributi
attribute @s minecraft:entity_interaction_range modifier remove flame_sword:range

# Rimozione tag
execute at @s run function skills:list/offensive/flame_sword/macro_reset with entity @e[type=marker,limit=1,sort=nearest,distance=..3,tag=flame_sword.visual] data
tag @s remove flame_sword.energy

# Feedback visivo
playsound block.fire.extinguish ambient @a ~ ~ ~ 2 1.1