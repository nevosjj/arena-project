#########################################################
## Funzione ausiliaria                                 ##
## Chiamato da skills:auxiliary/trigger/raycast/init   ##
## Ricorsione di controllo raycast                     ##
## UTENTE VS NEMICI (teamID)                           ##
#########################################################

## Caso base
execute if score @s temp matches ..0 run return run function skills:auxiliary/trigger/raycast/fail with entity @s data

## Muro
execute unless block ~ ~ ~ air run return run function skills:auxiliary/trigger/raycast/fail with entity @s data

## Controllo nemico
execute if entity @e[type=player,limit=1,sort=nearest,distance=..1.25] \
    unless score @s teamID = @e[type=player,limit=1,sort=nearest,distance=..1.25] teamID run \ 
    return run function skills:auxiliary/trigger/raycast/success with entity @s data

## Teletrasporto
tp @s ^ ^ ^0.5

## temp--
scoreboard players remove @s temp 1

## Richiamata
execute at @s run function skills:auxiliary/trigger/raycast/recursion with entity @s data