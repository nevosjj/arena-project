###############################################################
## Chiamata da match:events/powerup/pick                     ##
## Esecutore: il giocatore                                   ##
## Macro: match_data:1v1 powerups[berserk] (name, duration,  ##
##        bonus)                                             ##
## +$(bonus) danno melee per $(duration) tick. Se è già      ##
## attivo riparte solo il timer (il bonus non si somma).     ##
###############################################################

# Annuncio
function match:events/powerup/logic/pick_feedback {name:"Berserk",color:"dark_red"}

# Primo berserk: bonus e anelli
$execute unless entity @s[tag=powerup.berserk] run function match:events/powerup/types/berserk/start {bonus:$(bonus)}

# Durata
$scoreboard players set @s powerup.berserk_timer $(duration)
