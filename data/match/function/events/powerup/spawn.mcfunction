#######################################################################
## Chiamata da root:ticks/stopwatches (match:powerup/incoming a 10s) ##
## Fine dell'anteprima: il potenziamento appare e parte              ##
## match:powerup/life. Senza anteprima riparte l'attesa.             ##
#######################################################################

stopwatch remove match:powerup/incoming

# Anteprima sparita (non dovrebbe succedere): si ricomincia
execute unless entity @e[type=marker,tag=powerup.incoming] run return run stopwatch create match:powerup/cycle

# Comparsa
execute as @e[type=marker,tag=powerup.incoming,limit=1] at @s run function match:events/powerup/appear with entity @s data
stopwatch create match:powerup/life
