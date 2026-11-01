#################################################################
## Chiamato da switch/swap                                     ##
## Salva nel data del marker le coordinate di arrivo ($(to))   ##
## e genera la particella dalla posizione di $(from)           ##
## Parametri: from, to, color (RGB intero), duration, count    ##
## ATTENZIONE: sovrascrive temp2                               ##
#################################################################

## Parametri particella
$data modify entity @s data.color set value $(color)
$data modify entity @s data.duration set value $(duration)
$data modify entity @s data.count set value $(count)

## Coordinate di arrivo
$data modify entity @s data.x set from entity @e[type=player,limit=1,tag=$(to)] Pos[0]
$data modify entity @s data.z set from entity @e[type=player,limit=1,tag=$(to)] Pos[2]
# Y alzata di 1 blocco (all'altezza del busto)
$execute store result score @s temp2 run data get entity @e[type=player,limit=1,tag=$(to)] Pos[1] 100
scoreboard players add @s temp2 100
execute store result entity @s data.y double 0.01 run scoreboard players get @s temp2

## Particella
$execute at @e[type=player,limit=1,tag=$(from)] run function skills:list/utility/switch/particle with entity @s data
