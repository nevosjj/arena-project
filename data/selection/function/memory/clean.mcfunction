# Metti ID giocatore nella temp
execute store result storage arenaproject:game_memory temporary.ID int 1 run scoreboard players get @s ID

# Macro expand
function selection:memory/clean_macro with storage arenaproject:game_memory temporary

# Pulisci temporanea
data remove storage arenaproject:game_memory temporary