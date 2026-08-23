##########################################
## Funzione tick dei manichini della morte
##########################################

# Auto-uccisione
$execute if score @s animation matches ..0 run return run function animation:deaths/$(death_animation)/kill

# Rimozione animazione
scoreboard players remove @s animation 1

# Tick animazione
$function animation:deaths/$(death_animation)/tick