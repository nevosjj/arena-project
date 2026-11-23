##########################################################
## Chiamata da match:events/powerup/logic/appear        ##
## Esecutore: il marker del potenziamento               ##
## Macro: i data del marker (type)                      ##
## Evento: {event:"powerup_spawn",powerup}              ##
##########################################################

$data modify storage match_recorder:data event set value {event:"powerup_spawn",powerup:"$(type)"}
function recording:timestamps/add
