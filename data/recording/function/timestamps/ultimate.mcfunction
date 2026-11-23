##########################################################
## Chiamata da skills:activations/flow/generic          ##
## Esecutore: il giocatore                              ##
## Macro: arenaproject:game_memory temporary.activation ##
##        (ID, playerName)                              ##
## Evento: {event:"ultimate",player,skill}              ##
##########################################################

data modify storage match_recorder:data event set value {event:"ultimate"}
data modify storage match_recorder:data event.player set from storage arenaproject:game_memory temporary.activation.playerName
$data modify storage match_recorder:data event.skill set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.ultimate.display.name
function recording:timestamps/add
