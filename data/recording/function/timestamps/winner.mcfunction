##########################################################
## Chiamata da recording:rounds/end                     ##
## Esecutore: il giocatore ancora vivo                  ##
## Scrive il vincitore nel round e nell'evento          ##
## round_end (in 2v2 resterebbe l'ultimo dei vivi)      ##
##########################################################

function recording:timestamps/name
data modify storage match_recorder:data actual_match.rounds[-1].winner set from storage match_recorder:data name
data modify storage match_recorder:data event.player set from storage match_recorder:data name
