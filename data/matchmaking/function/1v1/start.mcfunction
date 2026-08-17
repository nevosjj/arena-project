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

# Creazione storage match


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
scoreboard objectives setdisplay below_name stat.current_health
scoreboard players set @a[tag=in_game] stat.max_health 2000
scoreboard players set @a[tag=in_game] stat.current_health 2000
scoreboard players set @a[tag=in_game] stat.attack 10
scoreboard players set @a[tag=in_game] stat.defense 0
scoreboard players set @a[tag=in_game] stat.combo 0
scoreboard players set @a[tag=in_game] poststat.best_combo 0
scoreboard players set @a[tag=in_game] experience_limit 25
scoreboard players set @a[tag=in_game] experience_gain 7
execute as @a[tag=in_game] run attribute @s minecraft:attack_damage base set 0.00000001
execute as @a[tag=in_game] run attribute @s minecraft:knockback_resistance base set 0.6

# Estrai un indice random in temporary sottoforma di mapIndex
# Poi estrai le informazioni della mappa giusta utilizzando mapIndex come macro
# DESTINAZIONE: temporary di map_data
execute store result storage arenaproject:map_data temporary.mapIndex int 1.0 run random value 0..1
function matchmaking:1v1/extract_info with storage arenaproject:map_data temporary

# Creazione informazioni partita per il match_recorder
function recording:new

# Comando !!!!TEMPORANEO!!!! che imposta come type della partita 1v1
# poi miglioro il sistema e refactoro questa parte intera della directory e del codice
data modify storage match_recorder:data actual_match.type set value "1v1"

# Impostazione condizione di vittoria
function match:condition with storage arenaproject:map_data temporary

# Piazzamento struttura
function match:structure with storage arenaproject:map_data temporary

# Teletrasporto
function match:teleport with storage arenaproject:map_data temporary

# Cancelli
function match:bars with storage arenaproject:map_data temporary

# Inizalizzazione funzione di selezione
function match:start