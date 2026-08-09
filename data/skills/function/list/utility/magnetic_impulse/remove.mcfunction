particle instant_effect{color:[0.722,0.482,0.122]} ~ ~1 ~ 0.05 0.5 0.05 0.05 1 force
execute unless score @s magnetic_impulse.counter matches 0 run return run scoreboard players remove @s magnetic_impulse.counter 1

scoreboard players reset @s magnetic_impulse.counter
attribute @s minecraft:movement_speed modifier remove magnetic_impulse:immobilize
attribute @s minecraft:jump_strength modifier remove magnetic_impulse:immobilize
tag @s remove magnetic_impulse.immobilized