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
data modify storage arenaproject:game_memory temporary.condition.skillTYPE_txt set value "offensive"
data modify storage arenaproject:game_memory temporary.condition.skillRange set value 24
execute store result storage arenaproject:game_memory temporary.condition.ID int 1 run scoreboard players get @s ID
execute store result storage arenaproject:game_memory temporary.condition.teamID int 1 run scoreboard players get @s teamID
# Condizione 1: N/A
# Condizione 2: Raycast
# Condizione 3: Bersaglio nella zona
execute if score @s condition.offensive matches 1 run function skills:auxiliary/trigger/tree with storage arenaproject:game_memory temporary.condition

# Check fail
# 0 = l'abilità non usa check
# 1 = l'abilità usa check
# 2 = l'abilità usa check e lo ha fallito, lo farà tornare a 1 dopo il feedback
execute if score @s condition.offensive matches 2 run return run function skills:auxiliary/trigger/block with storage arenaproject:game_memory temporary.condition

# Aggiunta dei dati sensibili al costo
execute store result storage arenaproject:game_memory temporary.activation.abilityCost int 1.0 run scoreboard players get @s experience_cost

# Rimozione esperienza con le informazioni con le macro del costo
function experience:remove with storage arenaproject:game_memory temporary.activation

# Inserimento tipo
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "offensive"

# Chiamata di funzione
function skills:activations/flow/generic