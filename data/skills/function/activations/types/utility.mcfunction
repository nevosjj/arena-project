# Revocazione advancement
advancement revoke @s only skills:utility

# Check ricarica (Il cui feedback NON viene restituito al player per evitare spam)
execute if score @s cooldown.utility_timer matches 1.. if score @s antispam.utility matches 1.. run return fail

# Check ricarica (Il cui feedback viene restituito al player)
execute if score @s cooldown.utility_timer matches 1.. unless score @s antispam.utility matches 1.. run return run function skills:activations/limit/utility

# Impostazione ricarica (L'antispam impostato serve a non dire al giocatore subito dopo aver attivato l'abilità che non possono usarla)
scoreboard players set @s antispam.utility 20
scoreboard players operation @s cooldown.utility_timer = @s cooldown.utility
tag @s add utility_down

# Inserimento tipo
# skillTYPE_num serve a cercare l'indice della skill tra i tipi dei players
# skillTYPE serve a cercare l'indice del tipo della skill tra la lista abilità
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_num set value 1
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "utility"

# Chiamata di funzione
function skills:activations/flow/generic