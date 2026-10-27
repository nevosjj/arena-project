###################################
## Chiamato da ADVANCEMENT       ##
## ADVANCEMENT: skills:offensive ##
###################################

## Revocazione advancement
advancement revoke @s only skills:offensive

# Check tra un uso e l'altro (Il cui feedback NON viene restituito al player per evitare spam)
execute if score @s cooldown.offensive matches 1.. run return fail

# Check esperienza (Il cui feedback NON viene restituito al player per evitare spam)
execute if score @s antispam.offensive matches 1.. if score @s experience_level < @s experience_cost run return fail

# Check esperienza (Il cui feedback viene restituito al player)
execute unless score @s antispam.offensive matches 1.. if score @s experience_level < @s experience_cost run return run function skills:activations/limit/offensive

# Aggiunta cooldown tra un uso e l'altro
scoreboard players set @s cooldown.offensive 5

## CHECK CONDIZIONE DI ATTIVAZIONE
# Prepara ambiente nel datapath
execute if score @s condition.offensive matches 1 run data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "offensive"
execute if score @s condition.offensive matches 1 run function skills:auxiliary/trigger/general/setup with storage arenaproject:game_memory temporary.condition

# Fail del check
execute if score @s condition.offensive matches 2 run return run function skills:auxiliary/trigger/general/block with storage arenaproject:game_memory temporary.condition

# Aggiunta dei dati sensibili al costo
execute store result storage arenaproject:game_memory temporary.activation.abilityCost int 1.0 run scoreboard players get @s experience_cost

# Rimozione esperienza con le informazioni con le macro del costo
function experience:remove with storage arenaproject:game_memory temporary.activation

# Inserimento tipo
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "offensive"

# Chiamata di funzione
function skills:activations/flow/generic