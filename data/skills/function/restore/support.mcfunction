# Reset
tag @s remove support_down
scoreboard players reset @s cooldown.support_timer

# Feedback sonoro
playsound entity.firework_rocket.twinkle ui @s ~ ~ ~ 10 1.9

# Inizializzazione ristorso oggetto e dati temporanei
data modify storage arenaproject:game_memory temporary.restore merge value {itemIndex:"2",itemDye:"minecraft:green_dye",itemNameColor:"dark_green",skillTYPE_txt:"support"}

# Estrai informazioni abilità
function skills:restore/macro_call

# Cleanup
data remove storage arenaproject:game_memory temporary