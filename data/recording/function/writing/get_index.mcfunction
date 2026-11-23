##########################################################
## Chiamata da recording:actions/start_recording        ##
## Prende l'indice dove salvare la partita (saveIndex)  ##
## e fa avanzare quello della prossima: (i + 1) % 7     ##
##########################################################

# Indice attuale (0 se la lista è ancora vuota)
data modify storage match_recorder:data actual_match.index set compute default integer recording:index/current

# Indice della prossima partita
data modify storage api.nevosjj.lobby:match_list saveIndex set compute default integer recording:index/next
