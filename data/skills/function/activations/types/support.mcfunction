# Revocazione advancement
advancement revoke @s only skills:support

# Check ricarica (Il cui feedback NON viene restituito al player per evitare spam)
execute if score @s cooldown.support_timer matches 1.. if score @s antispam.support matches 1.. run return fail

# Check ricarica (Il cui feedback viene restituito al player)
execute if score @s cooldown.support_timer matches 1.. unless score @s antispam.support matches 1.. run return run function skills:activations/limit/support

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