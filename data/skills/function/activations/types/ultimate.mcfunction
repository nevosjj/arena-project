# Revocazione advancement
advancement revoke @s only skills:ultimate

# Check ricarica (Il cui feedback NON viene restituito al player per evitare spam)
execute if score @s cooldown.ultimate_timer matches 1.. if score @s antispam.ultimate matches 1.. run return fail

# Check ricarica (Il cui feedback viene restituito al player)
execute if score @s cooldown.ultimate_timer matches 1.. unless score @s antispam.ultimate matches 1.. run return run function skills:activations/limit/ultimate

# Impostazione ricarica (L'antispam impostato serve a non dire al giocatore subito dopo aver attivato l'abilità che non possono usarla)
scoreboard players set @s antispam.ultimate 20
scoreboard players operation @s cooldown.ultimate_timer = @s cooldown.ultimate
tag @s add ultimate_down

# Inserimento tipo
# skillTYPE_num serve a cercare l'indice della skill tra i tipi dei players
# skillTYPE serve a cercare l'indice del tipo della skill tra la lista abilità
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_num set value 3
data modify storage arenaproject:game_memory temporary.activation.skillTYPE_txt set value "ultimate"
# Chiamata di funzione
function skills:activations/flow/generic