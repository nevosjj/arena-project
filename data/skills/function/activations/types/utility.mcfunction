###################################
## Chiamato da ADVANCEMENT       ##
## ADVANCEMENT: skills:utility   ##
###################################

## Preparazione datapath specifico
data modify storage arenaproject:game_memory temporary.cd_check.skillTYPE_txt set value "utility"

## Inizializza controllo ricariche 
function skills:activations/check/cooldown with storage arenaproject:game_memory temporary.cd_check

## Inizalizza controllo condizioni
data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "utility"
function skills:activations/check/condition with storage arenaproject:game_memory temporary.condition

## Check fail
execute if score @s condition.utility matches 2 run data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "utility"
execute if score @s condition.utility matches 2 run return run function skills:activations/trigger/general/block with storage arenaproject:game_memory temporary.condition

## Impostazione ricarica
data modify storage arenaproject:game_memory temporary.down.skillTYPE_txt set value "utility"
function skills:activations/trigger/general/down with storage arenaproject:game_memory temporary.down

# Inserimento tipo
# hotbarIndex serve a cercare l'indice dell'abilità nella hotbar per sostituire l'item
# skillTYPE serve a cercare l'indice del tipo della skill tra la lista abilità
tag @s add execute_item_removal
data modify storage arenaproject:game_memory temporary.activation.hotbarIndex set value 1
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "utility"

# Chiamata di funzione
function skills:activations/flow/generic