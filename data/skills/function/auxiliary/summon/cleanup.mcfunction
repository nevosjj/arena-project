#######################################################################
## Chiamata da match:events/new_round e match:end/cleanup            ##
## Elimina tutte le evocazioni (tag "summon.part"), senza destroyed. ##
#######################################################################

execute as @e[tag=summon.part] run function skills:auxiliary/summon/kill
