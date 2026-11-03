#########################################################
## Chiamata da match:events/powerup/pick               ##
## Esecutore: il giocatore                             ##
## Cura istantanea di 200 (limitata alla vita massima: ##
## a vita piena viene sprecata).                       ##
#########################################################

# Feedback
particle totem_of_undying ~ ~1.2 ~ 0.2 0.3 0.2 0.3 10 force
playsound entity.player.levelup player @a ~ ~ ~ 1 1.6

# Annuncio
function match:events/powerup/pick_feedback {name:"Cura",color:"green"}

# Cura
scoreboard players set @s incoming_heal 200
function health:math/incoming_heal {name:"Potenziamento",playerName:"Cura"}
