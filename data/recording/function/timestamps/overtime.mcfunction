##########################################################
## Chiamata da match:events/overtime                    ##
## Evento: {event:"overtime"}                           ##
##########################################################

data modify storage match_recorder:data event set value {event:"overtime"}
function recording:timestamps/add
