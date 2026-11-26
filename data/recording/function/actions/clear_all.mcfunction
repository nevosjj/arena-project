##########################################################
## Chiamata da: a mano dal mondo (o da future funzioni) ##
## Cancella tutte le partite registrate nella lobby     ##
## saveIndex rimosso: la prossima partita riparte da 0  ##
##########################################################

data remove storage api.nevosjj.lobby:match_list elements
data remove storage api.nevosjj.lobby:match_list saveIndex

# Partita eventualmente aperta nel dialog
data remove storage recording:view match
