execute store result score @s motion.x1 run data get entity @s Pos[0] 1000
execute store result score @s motion.y1 run data get entity @s Pos[1] 1000
execute store result score @s motion.z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s motion.x2 run data get entity @s Pos[0] 1000
execute store result score @s motion.y2 run data get entity @s Pos[1] 1000
execute store result score @s motion.z2 run data get entity @s Pos[2] 1000

$execute store result entity @s Motion[0] double 0.0$(abilityMotion) run \
scoreboard players operation @s motion.x2 -= @s motion.x1
$execute store result entity @s Motion[1] double 0.0$(abilityMotion) run \
scoreboard players operation @s motion.y2 -= @s motion.y1
$execute store result entity @s Motion[2] double 0.0$(abilityMotion) run \
scoreboard players operation @s motion.z2 -= @s motion.z1