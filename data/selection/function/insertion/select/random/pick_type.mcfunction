## COMPORTAMENTO FUNZIONE PER TIPOLOGIA
# 0. Inizializzo i dati
# 1. Scorro ogni array di ogni tipologia di abilità per ottenere la ( dimensione - 1)
# 2. Uso la dimensione per calcolare indice random
# 3. Estraggo abilità
# 4. Notifica il giocatore che abilità è uscita
# 5. Usa la macro

# 0.
scoreboard players set #array_dim temp 0
data modify storage arenaproject:game_memory temporary.randomSelection.index set value "0"
# 1.
function selection:insertion/select/random/get_dim with storage arenaproject:game_memory temporary.randomSelection
# 2.
execute store result storage arenaproject:game_memory temporary.randomSelection.dim int 1.0 run scoreboard players get #array_dim temp
function selection:insertion/select/random/randomize with storage arenaproject:game_memory temporary.randomSelection
# 3.
function selection:insertion/select/random/get_random with storage arenaproject:game_memory temporary.randomSelection
# 4.
function selection:insertion/select/random/notify_get with storage arenaproject:game_memory temporary.randomSelection
# 5.
function selection:insertion/select/macro with storage arenaproject:game_memory temporary.randomSelection