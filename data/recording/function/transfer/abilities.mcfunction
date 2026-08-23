#################################################
## chiamata da recording:transfer/player_data  ##
## Raccolta abilità                            ##
#################################################

# Inserisci nell'elemento della partita il nome dell'abilità usando l'ID del giocatore come chiave.
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[0] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.offensive.display.name
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[1] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.support.display.name
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[2] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.utility.display.name
$data modify storage api.nevosjj.lobby:match_list elements[$(matchIndex)].players[{ID:$(ID)}].skills[3] set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.ultimate.display.name

# Pulizia fatta alla fine del flusso in end/win.
# Non rimuovere qui l'intero temp, perché contiene matchIndex e l'ID del giocatore
# che serve ancora per il prossimo ciclo di elaborazione.