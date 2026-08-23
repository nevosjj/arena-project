## Funzione che si occupa di mettere nello storage temp di scorrimento l'equipaggiamento giocatore

$data modify storage api.nevosjj.lobby:match_list temp.offensive set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].skills[0]

$data modify storage api.nevosjj.lobby:match_list temp.support set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].skills[1]

$data modify storage api.nevosjj.lobby:match_list temp.utility set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].skills[2]

$data modify storage api.nevosjj.lobby:match_list temp.ultimate set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].skills[3]