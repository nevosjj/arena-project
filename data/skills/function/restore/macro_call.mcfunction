## La funzione estrae le informazioni dell'abilità per metterla nell'oggetto dell'abilità ristorata

# Immagazzina nello storage temporaneo gli ID giocatore
execute store result storage arenaproject:game_memory temporary.restore.ID int 1 run scoreboard players get @s ID

# Chiamata di estrazione iniziale per capire indice abilità
function skills:restore/extract with storage arenaproject:game_memory temporary.restore

# Prendi le informazioni
function skills:restore/item_info with storage arenaproject:game_memory temporary.restore

# Feedback
function skills:restore/notify with storage arenaproject:game_memory temporary.restore