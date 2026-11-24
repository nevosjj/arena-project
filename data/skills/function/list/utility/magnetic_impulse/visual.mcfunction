##################################################################
## Chiamata da magnetic_impulse/callee_visual e da sé stessa    ##
## Esecutore e posizione: il marker "magnetic_impulse.visual"   ##
## 5 cerchi uno sopra l'altro (0.3 blocchi di distanza), raggio ##
## dal 20% al 100% del range. Punti = 12 x cerchio (spaziatura  ##
## costante). Particelle alternate: wax_off, wax_on, wax_off... ##
##################################################################

# Caso base
execute if score @s temp matches 5.. run return run function skills:list/utility/magnetic_impulse/visual_end

# Cerchio successivo
scoreboard players add @s temp 1

# Raggio = range x cerchio x 20%
execute store result score @s temp2 run data get entity @s data.distanceOrigin 100
scoreboard players operation @s temp2 *= @s temp
execute store result entity @s data.distance float 0.002 run scoreboard players get @s temp2

# Passo angolare = 30° / cerchio, punti = 12 x cerchio
scoreboard players set @s temp2 300
scoreboard players operation @s temp2 /= @s temp
execute store result entity @s data.step float 0.1 run scoreboard players get @s temp2
execute store result entity @s data.points int 12 run scoreboard players get @s temp

# Particella (alternanza: il primo è wax_off)
execute store success score @s bool unless score @s bool matches 1
execute if score @s bool matches 1 run data modify entity @s data.particle set value "wax_off"
execute unless score @s bool matches 1 run data modify entity @s data.particle set value "wax_on"

# Disegno del cerchio
function skills:list/utility/magnetic_impulse/ring with entity @s data

# Sali di 0.3 e ricorsione
tp @s ~ ~0.3 ~
execute at @s run function skills:list/utility/magnetic_impulse/visual
