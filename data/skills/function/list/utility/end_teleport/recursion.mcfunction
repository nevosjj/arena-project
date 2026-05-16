scoreboard players add @s temp 1
particle smoke ~ ~ ~ 0 0.8 0 0 10 force
tp @s ^ ^ ^1

execute unless blocks ^ ^ ^0.1 ^ ^1 ^3 ~ ~ ~ all run function skills:list/utility/end_teleport/end
$execute if score @s temp matches ..$(abilityRange) at @s run function skills:list/utility/end_teleport/recursion with entity @s data
$execute if score @s temp matches $(abilityRange).. positioned ~ ~0.5 ~ run function skills:list/utility/end_teleport/end