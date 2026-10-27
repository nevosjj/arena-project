##############################################
## Funzione ausiliaria                      ##
## Identifica che condizione usa l'abilità  ##
## poter potersi attivare                   ##
##############################################

## Ottieni il range della condizione dallo score del giocatore
$execute store result storage arenaproject:game_memory temporary.condition.skillRange int 1.0 run scoreboard players get @s condition_range.$(skillTYPE_txt)

## Ottieni ID del giocatore
execute store result storage arenaproject:game_memory temporary.condition.ID int 1 run scoreboard players get @s ID

## Ottieni teamID del giocatore
execute store result storage arenaproject:game_memory temporary.condition.teamID int 1 run scoreboard players get @s teamID

## Distingui tra RAYCAST || AREA
function skills:auxiliary/trigger/general/tree with storage arenaproject:game_memory temporary.condition