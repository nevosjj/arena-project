###################################
## Chiamato da ADVANCEMENT       ##
## ADVANCEMENT: skills:support   ##
###################################

## Preparazione datapath specifico
data modify storage arenaproject:game_memory temporary.cd_check.skillTYPE_txt set value "support"

## Inizializza controllo ricariche 
function skills:activations/check/cooldown with storage arenaproject:game_memory temporary.cd_check

## Inizalizza controllo condizioni
data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "support"
function skills:activations/check/condition with storage arenaproject:game_memory temporary.condition

## Check fail
execute if score @s condition.support matches 2 run return run function skills:auxiliary/trigger/block with storage arenaproject:game_memory temporary.condition

## Impostazione ricarica
scoreboard players operation @s cooldown.support_timer = @s cooldown.support
tag @s add support_down

# Inserimento tipo
# hotbarIndex serve a cercare l'indice dell'abilità nella hotbar per sostituire l'item
# skillTYPE serve a cercare l'indice del tipo della skill tra la lista abilità
tag @s add execute_item_removal
data modify storage arenaproject:game_memory temporary.activation.hotbarIndex set value 2
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "support"

# Chiamata di funzione
function skills:activations/flow/generic