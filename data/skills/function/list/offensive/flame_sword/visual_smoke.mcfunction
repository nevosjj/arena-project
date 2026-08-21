## Caso base
execute if score @s temp matches 12.. run return run kill @s

# Tp
tp @s ~ ~ ~ ~30 ~

# Particella
execute facing ^ ^ ^10000 run particle minecraft:large_smoke ~ ~1 ~ ^ ^ ^1000000 0.0000005 0

# Aumento
scoreboard players add @s temp 1

# Ricorsione
execute at @s run function skills:list/offensive/flame_sword/visual_smoke