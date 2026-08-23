## Funzione che si occupa di mettere nello storage temp di scorrimento le statistiche giocatore

# Cure ricevute
$data modify storage api.nevosjj.lobby:match_list temp.heal_received set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].stats.heal_received

# Danni melee inflitti
$data modify storage api.nevosjj.lobby:match_list temp.melee_done set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].stats.melee_done

# Miglior combo
$data modify storage api.nevosjj.lobby:match_list temp.best_combo set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].stats.best_combo

# Danni dimezzati
$data modify storage api.nevosjj.lobby:match_list temp.damage_halved set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].stats.damage_halved

# Danni ricevuti
$data modify storage api.nevosjj.lobby:match_list temp.damage_received set from storage api.nevosjj.lobby:match_list elements[$(cursorIndex)].players[$(playerIndex)].stats.damage_received