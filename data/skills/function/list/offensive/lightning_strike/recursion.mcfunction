scoreboard players add @s temp 1
particle firework ~ ~ ~ 0 0 0 0 1 force
tp @s ^ ^ ^1

execute unless blocks ^ ^1 ^0.1 ^ ^1 ^2.5 ~ ~ ~ all run return run function skills:list/offensive/lightning_strike/destination
$execute if score @s temp matches ..$(abilityLength) at @s run return run function skills:list/offensive/lightning_strike/recursion with entity @s data
$execute if score @s temp matches $(abilityLength).. positioned ~ ~0.5 ~ run return run function skills:list/offensive/lightning_strike/destination