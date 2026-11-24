###################################################################
## Chiamata da match:events/end_selection                        ##
## Avvia il ciclo dei potenziamenti del round. Fasi (stopwatch): ##
## match:powerup/cycle    attesa, poi annuncio                   ##
## match:powerup/incoming 10s di anteprima, poi comparsa         ##
## match:powerup/life     5s in campo, poi scadenza              ##
## Dopo raccolta o scadenza riparte match:powerup/cycle.         ##
###################################################################

# Attesa prima dell'annuncio: powerupTimer - 10
# (powerupTimer = secondi tra la fine di un potenziamento e la comparsa del successivo)
data modify storage match_data:1v1 list.1v1.powerupWait set compute default integer match:powerup/wait

# Stopwatch
stopwatch remove match:powerup/cycle
stopwatch remove match:powerup/incoming
stopwatch remove match:powerup/life
stopwatch create match:powerup/cycle

# Sidebar
function match:display/powerup/none
