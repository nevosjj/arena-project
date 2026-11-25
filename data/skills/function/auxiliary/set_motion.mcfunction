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

# Potenza di lancio letta dai provider skills:motion/*
$data modify storage arenaproject:game_memory motion.power set value $(motion)

# Applicazione: (fine - inizio) x motion, in millesimi di blocco (100 = 0.1 blocchi)
execute store result entity @s Motion[0] double 0.001 run compute entity @s integer skills:motion/x
execute store result entity @s Motion[1] double 0.001 run compute entity @s integer skills:motion/y
execute store result entity @s Motion[2] double 0.001 run compute entity @s integer skills:motion/z

# Reset
data remove storage arenaproject:game_memory motion
