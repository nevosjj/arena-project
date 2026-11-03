########################################################
## Chiamata da health:summon/destroyed                ##
## Esecutore e posizione: l'evocazione (piedi hitbox) ##
## Nome richiesto dal sistema evocazioni: rimanda     ##
## all'unica fine, regen_dispenser/end                ##
########################################################

execute positioned ~ ~0.3 ~ run function skills:list/support/regen_dispenser/end with entity @s data
