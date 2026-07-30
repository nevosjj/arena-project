#########
# chiamata da match:id_search
#########

# Inserisci nell'elemento della partita il nome dell'abilità usando l'ID del giocatore come chiave.
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[0] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills[0].abilityDisplay
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[1] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills[1].abilityDisplay
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[2] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills[2].abilityDisplay
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[3] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills[3].abilityDisplay

# Pulizia fatta alla fine del flusso in finish_match.
# Non rimuovere qui l'intero temp, perché contiene matchIndex e l'ID del giocatore
# che serve ancora per il prossimo ciclo di elaborazione.