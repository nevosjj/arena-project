##########################################
## Chiamata da recording:start_recording  ##
## La funzione viene chiamata da ogni    ##
## giocatore con tag=in_game             ##
## Crea un nuovo elemento nell'array     ##
## del salva partite                     ##
##########################################

# Crea un record del giocatore nella partita salvata
# Il campo ID è usato poi come chiave per scrivere abilità e altri dati.
data remove storage arenaproject:game_memory player_entry
execute store result storage arenaproject:game_memory player_entry.ID int 1.0 run scoreboard players get @s ID

# Inserisci array di stringe
data modify storage arenaproject:game_memory player_entry.skills set value ["","","",""]

# Inserisci username
loot replace entity @s enderchest.0 loot skills:player_name
data modify storage arenaproject:game_memory player_entry.username set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name

$data modify storage api.nevosjj.lobby:match_list elements[$(index)].players append from storage arenaproject:game_memory player_entry
data remove storage arenaproject:game_memory player_entry