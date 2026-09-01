scoreboard players add @s temp 1
execute if score @s temp matches 15.. run kill @s
execute if score @s temp matches 1 run tp @s ~ ~1 ~
execute if score @s temp matches 5 run data modify entity @s transformation.scale set value [0.0,0.0,0.0]