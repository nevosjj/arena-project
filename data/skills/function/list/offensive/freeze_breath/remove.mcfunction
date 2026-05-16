particle entity_effect{color:[0.412,0.843,1.000,0.40]} ~ ~1 ~ 0.05 0.5 0.05 0.05 1 force
execute unless score @s freeze_breath.counter matches 0 run return run scoreboard players remove @s freeze_breath.counter 1

scoreboard players reset @s freeze_breath.counter
attribute @s minecraft:movement_speed modifier remove freeze_breath:slow
tag @s remove freeze_breath.slowed