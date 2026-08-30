#####################################################################################
## Chiamato da                                                                     ##
## La funzione inserisce in un modo diegetico come funziona un'abilità             ##
## Prendendo dallo storage dell'abilità stessa il path skills[].display.chestItems ##
#####################################################################################

# Feedback
playsound minecraft:ui.toast.out ui @s ~ ~ ~ 10 2

# Copio i dati dell'abilità scelta
# Sposta l'item dal cursore allo slot 0 dell'Ender Chest
item replace entity @s enderchest.0 from entity @s player.cursor
# Leggi l'ID dall'item e conservalo nello score
data modify storage arenaproject:game_memory confirmTemp.skill_index set from entity @s EnderItems[{Slot:0b}].components."minecraft:custom_data".item_skill_id
# Leggi il Type (stringa offensive/utility/support/ultimate)
data modify storage arenaproject:game_memory confirmTemp.skill_string set from entity @s EnderItems[{Slot:0b}].components."minecraft:custom_data".item_skill_type
# Pulisci il cursore e lo slot usato
item replace entity @s player.cursor with air
item replace entity @s enderchest.0 with air

# Inserimento vetro nero
function selection:insertion/minecart/glass

# Inserimento UI
function selection:insertion/select/description_ui

# Inserimento dati dell'abilità 
function selection:insertion/select/extract_data with storage arenaproject:game_memory confirmTemp

## Inserimento tasti di conferma
# Crea il bottone di conferma
function selection:insertion/select/confirm_button with storage arenaproject:game_memory confirmTemp

# Crea il bottone di negazione
item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] container.17 with barrier[custom_data={select_back:true},custom_name={"text":"Torna indietro","color":"red","italic":false}]

# Pulizia storage
data remove storage arenaproject:game_memory confirmTemp