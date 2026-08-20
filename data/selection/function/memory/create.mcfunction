# Rimuovi la temp
data remove storage arenaproject:game_memory temporary

# Assegna ID
execute store result score @s ID store result storage arenaproject:game_memory temporary.ID int 1 run scoreboard players add #memory ID 1

# Inizializza abilità
data modify storage arenaproject:game_memory temporary.skills set value {offensive:{},support:{},utility:{},ultimate:{}}

# Prendi il nome dell'utente (usando un item rinominato nell'enderchest
loot replace entity @s enderchest.0 loot skills:player_name
data modify storage arenaproject:game_memory temporary.username set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name

# Assegna storage
data modify storage arenaproject:game_memory players append from storage arenaproject:game_memory temporary

# Pulisci temporanea
data remove storage arenaproject:game_memory temporary