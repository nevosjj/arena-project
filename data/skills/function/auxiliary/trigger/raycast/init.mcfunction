#################################################
## Funzione ausiliaria                         ##
## Chiamata dalle attivazioni di abilità che   ##
## richiedono un obiettivo per essere attivate ##
#################################################

## Rimozione tag di targeting
tag @s remove new_condition_marker
execute rotated as @p run tp @s ~ ~1.25 ~ ~ ~

## Trasferimento dati
data modify entity @s data set from storage arenaproject:game_memory temporary.condition

## Inizializzazione punteggio dal datapath
execute store result score @s ID run data get entity @s data.ID
execute store result score @s teamID run data get entity @s data.teamID
execute store result score @s temp run data get entity @s data.skillRange 2.0

## Inizializzazione raycast ricorsivo
execute at @s run function skills:auxiliary/trigger/raycast/recursion with entity @s data