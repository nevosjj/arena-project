# Reset
tag @s remove ultimate_down
scoreboard players reset @s cooldown.ultimate_timer

# Feedback sonoro
playsound entity.wither.spawn ui @s ~ ~ ~ 10 1.9

# Inizializzazione ristorso oggetto e dati temporanei
data modify storage arenaproject:game_memory temporary.restore merge value {itemIndex:"3",itemDye:"minecraft:orange_dye",itemNameColor:"gold",skillTYPE_txt:"ultimate"}

# Estrai informazioni abilità
function skills:restore/macro_call

# Cleanup
data remove storage arenaproject:game_memory temporary