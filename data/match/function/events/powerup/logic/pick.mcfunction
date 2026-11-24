###############################################################
## Chiamata da match:events/powerup/logic/tick               ##
## Esecutore: il giocatore | Posizione: il potenziamento     ##
## Macro: i data del marker del potenziamento (type)         ##
## Legge i parametri del tipo da match_data:1v1 e li passa  ##
## alla funzione pick del tipo via with storage.            ##
## Applica l'effetto del tipo, poi rimuove il potenziamento. ##
###############################################################

# Effetto del tipo
$data modify storage arenaproject:game_memory temporary.powerup_config set from storage match_data:1v1 list.1v1.powerups[{name:"$(type)"}]
$function match:events/powerup/types/$(type)/pick with storage arenaproject:game_memory temporary.powerup_config
data remove storage arenaproject:game_memory temporary.powerup_config

# Statistica post-partita
scoreboard players add @s poststat.powerup_picked 1

# Registrazione: raccolta (timestamps)
$function recording:timestamps/powerup_pick {type:"$(type)"}

# Rimozione
kill @e[type=block_display,tag=powerup.visual]
kill @e[type=marker,tag=powerup.active]

# Ciclo: riparte l'attesa
stopwatch remove match:powerup/life
stopwatch create match:powerup/cycle

# Sidebar
function match:display/powerup/none
