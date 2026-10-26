
## Caso base
execute if score @s temp matches ..0 run return run function skills:auxiliary/trigger/raycast_fail with entity @s data

particle firework ~ ~ ~

## Controllo nemico
execute if entity @e[type=player,limit=1,sort=nearest,distance=..1] \
    unless score @s ID = @e[type=player,limit=1,sort=nearest,distance=..1] ID run \ 
    return run function skills:auxiliary/trigger/raycast_success with entity @s data

## Teletrasporto
tp @s ^ ^ ^0.5

## temp--
scoreboard players remove @s temp 1

## Richiamata
execute at @s run function skills:auxiliary/trigger/raycast_recursive with entity @s data