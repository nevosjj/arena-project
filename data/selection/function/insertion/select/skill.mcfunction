# Sposta l'item dal cursore allo slot 0 dell'Ender Chest
item replace entity @s enderchest.0 from entity @s player.cursor

# Leggi l'ID dall'item e conservalo nello score
data modify storage arenaproject:game_memory temporary.skill_id set from entity @s EnderItems[{Slot:0b}].components."minecraft:custom_data".item_skill_id
# Leggi il Type (stringa offensive/utility/support/ultimate)
data modify storage arenaproject:game_memory temporary.skill_type_str set from entity @s EnderItems[{Slot:0b}].components."minecraft:custom_data".item_skill_type

# Metti ID GIOCATORE nella temp
execute store result storage arenaproject:game_memory temporary.ID int 1 run scoreboard players get @s ID

# Pulisci il cursore e lo slot usato
item replace entity @s player.cursor with air
item replace entity @s enderchest.0 with air

# Feedback
playsound block.note_block.pling ui @s ~ ~ ~ 10 2

# Ritorno indietro
function selection:insertion/movements/go_back

# Chiama la funzione di ricerca skill con le macro appena ottenute per selezionare l'abilità giusta
function selection:insertion/select/macro with storage arenaproject:game_memory temporary