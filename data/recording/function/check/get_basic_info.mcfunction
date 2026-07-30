## Funzione ausiliaria che si occupa di prendere informazioni generiche dei giocatori, elencate sotto
# nome
# ID giocatore

$data modify storage api.nevosjj.lobby:match_list temp.username set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].username
$data modify storage api.nevosjj.lobby:match_list temp.ID set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].ID