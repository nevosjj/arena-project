# Rimuovi la temp
data remove storage arenaproject:game_memory temporary

# Assegna ID
execute store result score @s ID store result storage arenaproject:game_memory temporary.ID int 1 run scoreboard players add #memory ID 1

# Inizializza abilità
data modify storage arenaproject:game_memory temporary.skills set value [\
    {},{},{},{}\
]

# Assegna storage
data modify storage arenaproject:game_memory players append from storage arenaproject:game_memory temporary

# Crea un secondo storage compatto per debug futuro
#execute store result score @s ID store result storage arenaproject:compact_game_memory temporary.ID int 1 run scoreboard players get #memory ID

# Inizializza abilità compatte
#data modify storage arenaproject:compact_game_memory temporary.skills set value [\
    {},{},{},{}\
#]
# Assegna storage compatto
#data modify storage arenaproject:compact_game_memory players append from storage arenaproject:game_memory temporary


# Pulisci temporanea
data remove storage arenaproject:game_memory temporary
#data remove storage arenaproject:compact_game_memory temporary