## COMPORTAMENTO FUNZIONE PER TIPOLOGIA
# 0. Inizializzo i dati
# 1. Scorro ogni array di ogni tipologia di abilità per ottenere la ( dimensione - 1)
# 2. Uso la dimensione per calcolare indice random
# 3. Estraggo abilità
# 4. Notifica il giocatore che abilità è uscita
# 5. Usa la macro

# 0.
execute store result storage arenaproject:game_memory temporary.randomSelection.ID int 1 run scoreboard players get @s ID
scoreboard players set #array_dim temp 0
data modify storage arenaproject:game_memory temporary.randomSelection.index set value "0"
# 1.
function selection:insertion/select/random/get_dim with storage arenaproject:game_memory temporary.randomSelection
# 2.
execute store result storage arenaproject:game_memory temporary.randomSelection.lastIndex int 1.0 run scoreboard players get #array_dim temp
function selection:insertion/select/random/randomize with storage arenaproject:game_memory temporary.randomSelection
# 3.
function selection:insertion/select/random/extract
# 4.
function selection:insertion/select/random/notify_get with storage arenaproject:game_memory temporary.randomSelection
# 5.
# La macro condivisa legge sempre da temporary.skill_id, quindi sincronizzo qui il valore random
# prima di chiamarla, così anche il flusso casuale salva meta.dynamicIndex correttamente.
data modify storage arenaproject:game_memory temporary.skill_id set from storage arenaproject:game_memory temporary.randomSelection.skill_id
function selection:insertion/select/macro with storage arenaproject:game_memory temporary.randomSelection