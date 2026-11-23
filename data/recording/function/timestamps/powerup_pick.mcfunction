##########################################################
## Chiamata da match:events/powerup/logic/pick          ##
## Esecutore: il giocatore                              ##
## Macro: i data del marker (type)                      ##
## Evento: {event:"powerup_pick",player,powerup}        ##
##########################################################

$data modify storage match_recorder:data event set value {event:"powerup_pick",powerup:"$(type)"}
function recording:timestamps/name
data modify storage match_recorder:data event.player set from storage match_recorder:data name
function recording:timestamps/add
