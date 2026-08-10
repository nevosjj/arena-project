############
# INFO
# CHIAMATA DA skills/activations/tipo_abilita
############

# Immagazzina nello storage temporaneo gli ID giocatore, ID squadra e ID abilità
# ID e teamID sono importanti per capire i bersagli delle abilità,
execute store result storage arenaproject:game_memory temporary.activation.ID int 1 run scoreboard players get @s ID
execute store result storage arenaproject:game_memory temporary.activation.teamID int 1 run scoreboard players get @s teamID

# skillTYPE è l'indice del tipo di abilità, conferito su activations/types/tipo dopo l'attivazione dell'advancement
# skillID è l'indice dell'abilità tra il tipo.

# Inserimento nome giocatore dell'abilità
function skills:activations/flow/player_name

# Ricerca skillIndex dell'abilità dal dynamicIndex del giocatore
function skills:activations/flow/search_id with storage arenaproject:game_memory temporary.activation

# Chiama la funzione di ricerca abilità tramite le informazioni appena acquisite
function skills:activations/flow/macro_call with storage arenaproject:game_memory temporary.activation