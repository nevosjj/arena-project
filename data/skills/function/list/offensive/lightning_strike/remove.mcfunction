particle entity_effect{color:[0.87,0.8,0.5,0.70]} ~ ~1 ~ 0.05 0.5 0.05 0.05 1 force
execute unless score @s lightning_strike.counter matches 0 run return run scoreboard players remove @s lightning_strike.counter 1

scoreboard players reset @s lightning_strike.counter
attribute @s minecraft:movement_speed modifier remove lightning_strike:slow
attribute @s minecraft:jump_strength modifier remove lightning_strike:jump
tag @s remove lightning_strike.immobilized