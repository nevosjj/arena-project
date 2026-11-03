##########################################################
## Chiamata da match:events/powerup/pick                ##
## Esecutore: il giocatore                              ##
## +5 danno melee per 10s. Se è già attivo riparte solo ##
## il timer (il bonus non si somma).                    ##
##########################################################

# Annuncio
function match:events/powerup/pick_feedback {name:"Berserk",color:"dark_red"}

# Primo berserk: bonus e anelli
execute unless entity @s[tag=powerup.berserk] run function match:events/powerup/types/berserk/start

# Durata (10s)
scoreboard players set @s powerup.berserk_timer 200
