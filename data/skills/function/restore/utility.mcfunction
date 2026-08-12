# Reset
tag @s remove utility_down
scoreboard players reset @s cooldown.utility_timer

# Feedback sonoro
playsound entity.iron_golem.repair ui @s ~ ~ ~ 10 1.9

# Inizializzazione ristorso oggetto e dati temporanei
data modify storage arenaproject:game_memory temporary.restore merge value {itemIndex:"1",itemDye:"minecraft:yellow_dye",itemNameColor:"yellow",skillTYPE_txt:"utility"}

# Estrai informazioni abilità
function skills:restore/macro_call

# Cleanup
data remove storage arenaproject:game_memory temporary