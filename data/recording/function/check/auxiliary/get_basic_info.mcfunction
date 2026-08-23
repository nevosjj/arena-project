###########################################
## Funzione ausiliaria, prende info      ## 
## generiche dei giocatori               ##
## 1. Nome giocatore                     ##
## 2. ID giocatore                       ##
###########################################

$data modify storage api.nevosjj.lobby:match_list temp.username set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].username
$data modify storage api.nevosjj.lobby:match_list temp.ID set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].ID