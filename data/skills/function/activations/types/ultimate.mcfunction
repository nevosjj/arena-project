###################################
## Chiamato da ADVANCEMENT       ##
## ADVANCEMENT: skills:ultimate  ##
###################################

## Preparazione datapath specifico
data modify storage arenaproject:game_memory temporary.cd_check.skillTYPE_txt set value "ultimate"

## Inizializza controllo ricariche 
function skills:activations/check/cooldown with storage arenaproject:game_memory temporary.cd_check

## Inizalizza controllo condizioni
data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "ultimate"
function skills:activations/check/condition with storage arenaproject:game_memory temporary.condition

## Check fail
execute if score @s condition.ultimate matches 2 run data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "ultimate"
execute if score @s condition.ultimate matches 2 run return run function skills:activations/trigger/general/block with storage arenaproject:game_memory temporary.condition

## Impostazione ricarica
# NON ESISTE, LA ULTIMATE VA USATA UNA VOLTA SOLA

# Inserimento tipo
# hotbarIndex serve a cercare l'indice dell'abilità nella hotbar per sostituire l'item
# skillTYPE serve a cercare l'indice del tipo della skill tra la lista abilità
tag @s add execute_item_removal
data modify storage arenaproject:game_memory temporary.activation.hotbarIndex set value 3
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "ultimate"
# Chiamata di funzione
function skills:activations/flow/generic