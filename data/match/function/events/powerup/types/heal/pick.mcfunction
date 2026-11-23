##########################################################
## Chiamata da match:events/powerup/pick               ##
## Esecutore: il giocatore                             ##
## Macro: match_data:1v1 powerups[heal] (name, amount) ##
## Cura istantanea (limitata alla vita massima:        ##
## a vita piena viene sprecata).                       ##
##########################################################

# Feedback
particle totem_of_undying ~ ~1.2 ~ 0.2 0.3 0.2 0.3 10 force
playsound minecraft:block.trial_spawner.open_shutter voice @a ~ ~ ~ 2 1

# Annuncio
function match:events/powerup/pick_feedback {name:"Cura",color:"green"}

# Cura
$scoreboard players set @s incoming_heal $(amount)
function health:math/incoming_heal {name:"Potenziamento",playerName:"Cura"}
