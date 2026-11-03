###############################################################
## Chiamata da match:events/powerup/tick                     ##
## Esecutore: il giocatore | Posizione: il potenziamento     ##
## Macro: i data del marker del potenziamento (type)         ##
## Applica l'effetto del tipo, poi rimuove il potenziamento. ##
###############################################################

# Effetto del tipo
$function match:events/powerup/types/$(type)/pick

# Statistica post-partita
scoreboard players add @s poststat.powerup_picked 1

# Rimozione
kill @e[type=block_display,tag=powerup.visual]
kill @e[type=marker,tag=powerup.active]

# Ciclo: riparte l'attesa
stopwatch remove match:powerup/life
stopwatch create match:powerup/cycle

# Sidebar
function match:display/powerup/none
