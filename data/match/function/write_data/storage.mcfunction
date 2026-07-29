########
# Chiamata da match:finish_match
########

# Salva la partita nello storage globale della lobby
$data modify storage api.nevosjj.lobby:match_list elements[$(index)] set from storage match_recorder:data actual_match