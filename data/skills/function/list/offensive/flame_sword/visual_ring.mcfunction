########################################################
## Chiamata da skills:list/offensive/flame_sword/tick ##
## Esecutore: il caster, alla sua posizione           ##
## Aura di fuoco ai piedi: anello a 16 raggi,         ##
## disegnato un tick sì e uno no (tag di alternanza). ##
########################################################

# Alternanza: salta un tick
execute if entity @s[tag=flame_sword.ring_skip] run return run tag @s remove flame_sword.ring_skip
tag @s add flame_sword.ring_skip

# Anello (16 raggi, 22.5°)
execute rotated 0 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 22.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 45 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 67.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 90 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 112.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 135 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 157.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 180 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 202.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 225 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 247.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 270 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 292.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 315 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
execute rotated 337.5 0 run particle minecraft:small_flame ~ ~0.1 ~ ^ ^ ^1000000 0.0000001 0
