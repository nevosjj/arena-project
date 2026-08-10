scoreboard players add @s temp 1
particle firework ~ ~ ~ 0 0 0 0 1 force

execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #minecraft:air run return run function skills:list/offensive/lightning_strike/destination
tp @s ^ ^ ^0.25

execute if score @s temp < @s temp2 at @s run return run function skills:list/offensive/lightning_strike/recursion with entity @s data
execute if score @s temp >= @s temp2 positioned ~ ~0.5 ~ run return run function skills:list/offensive/lightning_strike/destination