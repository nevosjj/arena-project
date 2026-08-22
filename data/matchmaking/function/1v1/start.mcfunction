############
# INFO
# CHIAMATA DA matchmaking/1v1/check
############

# Feedback
tellraw @a[tag=in_game] [{"text":"\n> ","color":"gray","bold":true},{"text":"Partita cominciata.","color":"dark_green","bold":false}]
execute as @a[tag=in_game] at @s run playsound block.note_block.pling voice @s ~ ~ ~ 1 0.9

# Creazione storage abilità
function match:storages/abilities/offensive
function match:storages/abilities/utility
function match:storages/abilities/support
function match:storages/abilities/ultimate

# Creazione storage mappa
function matchmaking:storages/maps/1v1

# Creazione storage modalità
function matchmaking:storages/modes/1v1

# Gestione interaction in lobby
tag @e[type=interaction,tag=matchmaking.1v1] add can_spectate

# Gestione tags
execute as @e[tag=1v1.queued,sort=random,type=player,limit=2] run tag @s add in_game
execute as @a[tag=1v1.queued] run tag @s remove 1v1.queued

# Crea memoria del gioco
execute as @a[tag=in_game] run function selection:memory/create

# Operazione teamID
execute as @a[tag=in_game] run scoreboard players operation @s teamID = @s ID

# Operazione statistiche
function matchmaking:create/objectives

# Attributi giocatori
# Prima di chiamare, moltiplica x2 le vite dei giocatori (su MC un cuore equivale a 2.0 hp)
execute store result storage match_data:1v1 list.1v1.playerLives float 2.0 run data get storage match_data:1v1 list.1v1.playerLives
function matchmaking:create/attributes with storage match_data:1v1 list.1v1

# Estrai un indice random in temporary sottoforma di mapIndex
# Poi estrai le informazioni della mappa giusta utilizzando mapIndex come macro
# DESTINAZIONE: temporary di map_data
execute store result storage map_data:1v1 temporary.mapIndex int 1.0 run random value 0..1
function matchmaking:1v1/extract_info with storage map_data:1v1 temporary

# Creazione informazioni partita per il match_recorder
function recording:new

# Comando !!!!TEMPORANEO!!!! che imposta come type della partita 1v1
# poi miglioro il sistema e refactoro questa parte intera della directory e del codice
data modify storage match_recorder:data actual_match.type set value "1v1"

# Impostazione condizione di vittoria
function match:condition with storage map_data:1v1 temporary

# Piazzamento struttura
function match:structure with storage map_data:1v1 temporary

# Teletrasporto
function match:teleport with storage map_data:1v1 temporary

# Cancelli
function match:bars with storage map_data:1v1 temporary

# Inizalizzazione funzione di selezione
function match:start