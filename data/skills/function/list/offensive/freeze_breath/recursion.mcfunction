##########################################################################
## Chiamata da skills:list/offensive/freeze_breath/setup e da sé stessa ##
## Esecutore e posizione: il marker | Rotazione: il caster              ##
## Score: @s temp = passi totali | @s temp3 = passo attuale             ##
## #freeze_breath temp/temp2 = direzione (sinistra/su)                  ##
##########################################################################

# Passo attuale
scoreboard players add @s temp3 1

# Posizione locale della particella: raggio (0.0175 * passo) * direzione / 10000
scoreboard players operation #freeze_breath temp7 = #freeze_breath temp
scoreboard players operation #freeze_breath temp7 *= @s temp3
execute store result storage arenaproject:game_memory tempFreezingBreath.x float 0.00000175 run scoreboard players get #freeze_breath temp7
scoreboard players operation #freeze_breath temp7 = #freeze_breath temp2
scoreboard players operation #freeze_breath temp7 *= @s temp3
execute store result storage arenaproject:game_memory tempFreezingBreath.y float 0.00000175 run scoreboard players get #freeze_breath temp7

# Raggio del danno (0.025 * passo, come prima)
execute store result storage arenaproject:game_memory tempFreezingBreath.range float 0.025 run scoreboard players get @s temp3

# Particelle, blocco e danno
function skills:list/offensive/freeze_breath/step with storage arenaproject:game_memory tempFreezingBreath

# Rotazione della direzione di 7.5° (x' = x*cos - y*sin | y' = x*sin + y*cos)
scoreboard players operation #freeze_breath temp8 = #freeze_breath temp
scoreboard players operation #freeze_breath temp8 *= #freeze_breath temp3
scoreboard players operation #freeze_breath temp9 = #freeze_breath temp2
scoreboard players operation #freeze_breath temp9 *= #freeze_breath temp4
scoreboard players operation #freeze_breath temp8 -= #freeze_breath temp9

scoreboard players operation #freeze_breath temp9 = #freeze_breath temp
scoreboard players operation #freeze_breath temp9 *= #freeze_breath temp4
scoreboard players operation #freeze_breath temp10 = #freeze_breath temp2
scoreboard players operation #freeze_breath temp10 *= #freeze_breath temp3
scoreboard players operation #freeze_breath temp9 += #freeze_breath temp10

# Ritorno alla scala 10000 con arrotondamento
scoreboard players operation #freeze_breath temp8 += #freeze_breath temp6
scoreboard players operation #freeze_breath temp8 /= #freeze_breath temp5
scoreboard players operation #freeze_breath temp9 += #freeze_breath temp6
scoreboard players operation #freeze_breath temp9 /= #freeze_breath temp5
scoreboard players operation #freeze_breath temp = #freeze_breath temp8
scoreboard players operation #freeze_breath temp2 = #freeze_breath temp9

# Caso base
execute if score @s temp3 >= @s temp run return run data remove storage arenaproject:game_memory tempFreezingBreath

# Avanzamento lungo la visuale e ricorsione
tp @s ^ ^ ^0.06
execute at @s run function skills:list/offensive/freeze_breath/recursion
