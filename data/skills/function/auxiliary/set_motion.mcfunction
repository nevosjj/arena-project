###################################################################################
## Chiamata da cookie_blaster/aim e regen_dispenser/projectile                   ##
## Esecutore e posizione: il proiettile, ruotato nella direzione di lancio       ##
## Uso: function skills:auxiliary/set_motion {motion:<int>}                      ##
## Velocità finale = motion / 10 blocchi per tick (es. 17 -> 1.7, 9 -> 0.9)      ##
###################################################################################

# Posizione iniziale
execute store result score @s motion.x1 run data get entity @s Pos[0] 1000
execute store result score @s motion.y1 run data get entity @s Pos[1] 1000
execute store result score @s motion.z1 run data get entity @s Pos[2] 1000

# Passo di 0.1 blocchi nella direzione di lancio
tp @s ^ ^ ^0.1

# Posizione finale
execute store result score @s motion.x2 run data get entity @s Pos[0] 1000
execute store result score @s motion.y2 run data get entity @s Pos[1] 1000
execute store result score @s motion.z2 run data get entity @s Pos[2] 1000

# Direzione (spostamento in millesimi di blocco: 100 = 0.1 blocchi)
scoreboard players operation @s motion.x2 -= @s motion.x1
scoreboard players operation @s motion.y2 -= @s motion.y1
scoreboard players operation @s motion.z2 -= @s motion.z1

# Moltiplicazione per motion (motion.x1 riusato come contenitore)
$scoreboard players set @s motion.x1 $(motion)
scoreboard players operation @s motion.x2 *= @s motion.x1
scoreboard players operation @s motion.y2 *= @s motion.x1
scoreboard players operation @s motion.z2 *= @s motion.x1

# Applicazione (scala fissa, funziona con qualsiasi numero di cifre)
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s motion.x2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s motion.y2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s motion.z2
