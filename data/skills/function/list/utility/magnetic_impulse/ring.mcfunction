################################################################
## Chiamata da magnetic_impulse/visual e da sé stessa         ##
## Esecutore e posizione: il marker "magnetic_impulse.visual" ##
## Macro: distance, step, points, particle                    ##
## Ruota di step° e mette un punto a distance, points volte.  ##
################################################################

# Caso base (cerchio chiuso): azzera per il prossimo
$execute if score @s range matches $(points).. run return run scoreboard players set @s range 0

# Punto
scoreboard players add @s range 1
$tp @s ~ ~ ~ ~$(step) 0
$execute at @s run particle $(particle) ^ ^ ^$(distance) 0 0 0 0 1 force

# Ricorsione
execute at @s run function skills:list/utility/magnetic_impulse/ring with entity @s data
