#########################################################
## Funzione ausiliaria                                 ##
## Chiamato da skills:activations/trigger/raycast/init   ##
## Ricorsione di controllo raycast                     ##
## UTENTE VS NEMICI (teamID)                           ##
#########################################################

## Caso base
execute if score @s temp matches ..0 run return run function skills:activations/trigger/raycast/fail with entity @s data

## Muro
execute unless block ~ ~ ~ #skills:raycast run return run function skills:activations/trigger/raycast/fail with entity @s data

## Controllo nemico
execute if entity @e[type=player,limit=1,sort=nearest,distance=..1.5] \
    unless score @s teamID = @e[type=player,limit=1,sort=nearest,distance=..1.5] teamID run \ 
    return run function skills:activations/trigger/raycast/success with entity @s data

## Teletrasporto
tp @s ^ ^ ^0.5

## temp--
scoreboard players remove @s temp 1

## Richiamata
execute at @s run function skills:activations/trigger/raycast/recursion with entity @s data