## Funzione di reinserimento lista partite nella chest

# Metto lo score a 0
scoreboard players set #match_list temp 0

# Impostazione indice di scorrimento
data modify storage api.nevosjj.lobby:match_list temp.insertIndex set value 0

# Scorri tutto e inserisci il necessario
function recording:insert/for with storage api.nevosjj.lobby:match_list temp

# Pulizia
data remove storage api.nevosjj.lobby:match_list temp