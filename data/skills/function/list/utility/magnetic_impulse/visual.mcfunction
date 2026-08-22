# Caso base
execute if score @s range matches 32.. run return run kill @s

# Aumento punteggio
scoreboard players add @s range 1

# Rotazione e inclinazione per far apparire una spirale più evidente
tp @s ~ ~-0.1 ~ ~21 ~

# Particella
$particle dust_color_transition{from_color:[1.000,0.557,0.169],to_color:[0.251,1.000,0.576],scale:2.5} ^ ^ ^$(distance) 0.1 0.1 0.1 0 3 force
$particle dripping_lava ^ ^ ^$(distance) 0 0 0 0 1 force

# Cambiamento caratteristiche: raggio sempre più piccolo
scoreboard players remove @s temp 2
execute store result entity @s data.scale float 0.01 run scoreboard players get @s temp
$execute store result entity @s data.distance float $(scale) run data get entity @s data.distanceOrigin

# Ricorsione
execute at @s run function skills:list/utility/magnetic_impulse/visual with entity @s data