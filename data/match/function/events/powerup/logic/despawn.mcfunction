###################################################################
## Chiamata da root:ticks/stopwatches (match:powerup/life a 15s) ##
## Nessuno l'ha raccolto: sparisce e riparte l'attesa.           ##
###################################################################

stopwatch remove match:powerup/life

# Feedback
execute at @e[type=marker,tag=powerup.active,limit=1] run particle poof ~ ~0.8 ~ 0.2 0.2 0.2 0.02 15 force
execute at @e[type=marker,tag=powerup.active,limit=1] run playsound block.beacon.deactivate master @a ~ ~ ~ 1.5 1.5
execute at @e[type=marker,tag=powerup.active,limit=1] run playsound block.glass.break master @a ~ ~ ~ 1.5 0.75

# Rimozione
kill @e[type=block_display,tag=powerup.visual]
kill @e[type=marker,tag=powerup.active]

# Ciclo
stopwatch create match:powerup/cycle

# Sidebar
function match:display/powerup/none
