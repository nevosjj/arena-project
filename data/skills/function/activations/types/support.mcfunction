###################################
## Chiamato da ADVANCEMENT       ##
## ADVANCEMENT: skills:support   ##
###################################

# Revocazione advancement
advancement revoke @s only skills:support

## CHECK RICARICA (Silent)
execute if score @s cooldown.support_timer matches 1.. if score @s antispam.support matches 1.. run return fail

## CHECK RICARICA (Feedback)
execute if score @s cooldown.support_timer matches 1.. unless score @s antispam.support matches 1.. run return run function skills:activations/limit/support

## CHECK CONDIZIONE DI ATTIVAZIONE
# Prepara ambiente nel datapath
data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "support"
data modify storage arenaproject:game_memory temporary.condition.skillRange set value 24
execute store result storage arenaproject:game_memory temporary.condition.ID int 1 run scoreboard players get @s ID
# Condizione 1: N/A
# Condizione 2: Raycast
# Condizione 3: Bersaglio nella zona
execute if score @s condition.support matches 1 run function skills:auxiliary/trigger/tree with storage arenaproject:game_memory temporary.condition

# Check fail
# 0 = l'abilità non usa check
# 1 = l'abilità usa check
# 2 = l'abilità usa check e lo ha fallito, lo farà tornare a 1 dopo il feedback
execute if score @s condition.support matches 2 run return run function skills:auxiliary/trigger/block with storage arenaproject:game_memory temporary.condition

# Impostazione ricarica (L'antispam impostato serve a non dire al giocatore subito dopo aver attivato l'abilità che non possono usarla)
scoreboard players set @s antispam.support 20
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