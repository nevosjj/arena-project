################################################################
## Chiamato dalla funzione selection:insertion/minecart/spawn ##
################################################################

# Operazione
scoreboard players operation @s ID = @e[type=player,tag=player.select_request,limit=1,sort=nearest,distance=..2] ID

# Immissione dell'ID nel data path
execute store result entity @s data.ID int 1.0 run scoreboard players get @s ID

# Applica tag di accoppiamento al giocatore
function selection:insertion/minecart/give_tag with entity @s data

# Pulizia tag
tag @s remove new_selection_minecart