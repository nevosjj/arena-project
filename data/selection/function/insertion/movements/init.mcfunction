## INFO: La funzione cerca di capire che tipologia di abilità il giocatore vuole selezionare.
## Trovato ciò mette le abilità interessate nella temp dello storage di ability_data e scorre verso indietro ciascuna di esse.

# Rimozione temp
data remove storage arenaproject:selection temporary

# Creazione temp da chiamata di funzione
execute if items entity @s player.cursor *[custom_data~{select_offensive:true}] run function selection:insertion/types/offensive
execute if items entity @s player.cursor *[custom_data~{select_utility:true}] run function selection:insertion/types/utility
execute if items entity @s player.cursor *[custom_data~{select_support:true}] run function selection:insertion/types/support
execute if items entity @s player.cursor *[custom_data~{select_ultimate:true}] run function selection:insertion/types/ultimate

# Rimozione oggetti precedenti
item replace entity @s player.cursor with air
item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..2] container.10 with air
item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..2] container.12 with air
item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..2] container.14 with air
item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..2] container.16 with air

# Vetri di grafica
execute at @s run function selection:insertion/minecart/glass

# Feedback
execute at @s run playsound entity.chicken.egg ui @s ~ ~ ~ 10 2

# Inizia loop
scoreboard players set #selection_loop temp 0
execute at @s run function selection:insertion/movements/loop