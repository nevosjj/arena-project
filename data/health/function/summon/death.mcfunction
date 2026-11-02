###################################################################################
## Chiamata da health:summon/melee_hit e skills:auxiliary/targeting/apply_damage ##
## Esecutore: l'evocazione distrutta                                             ##
## Chiama la destroyed dell'abilità (feedback e visual), poi elimina la hitbox.  ##
###################################################################################

# Distruzione (posizione: la hitbox, anche quando il danno arriva da un'abilità lontana)
execute at @s run function health:summon/destroyed with entity @s data

# Hitbox
function skills:auxiliary/summon/kill
