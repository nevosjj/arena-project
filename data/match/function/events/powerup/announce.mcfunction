############################################################
## Chiamata da match:events/powerup/cycle (fine attesa)   ##
## Esecutore: il controller                               ##
## Sceglie a caso il tipo (tra quelli con enabled:true) e ##
## il punto della mappa, evoca l'anteprima e la annuncia. ##
## Senza tipi attivi o senza punti il ciclo va a vuoto.   ##
############################################################

# Fine dell'attesa
stopwatch remove match:powerup/cycle

# Lista dei potenziamenti attivi
data remove storage arenaproject:game_memory temporary.powerup
data modify storage arenaproject:game_memory temporary.powerup.pool append from storage match_data:1v1 list.1v1.powerups[{enabled:true}]

# Niente da evocare: si riprova dopo un'altra attesa
execute unless data storage arenaproject:game_memory temporary.powerup.pool[0] run return run stopwatch create match:powerup/cycle
execute unless data storage map_data:1v1 temporary.powerup_spawns[0] run return run stopwatch create match:powerup/cycle

# Dimensioni delle liste
execute store result storage arenaproject:game_memory temporary.powerup.poolSize int 1 run data get storage arenaproject:game_memory temporary.powerup.pool
execute store result storage arenaproject:game_memory temporary.powerup.spawnSize int 1 run data get storage map_data:1v1 temporary.powerup_spawns

# Scelta casuale (indici negativi, da -1 a -dimensione)
data modify storage arenaproject:game_memory temporary.powerup.typeIndex set value 1
data modify storage arenaproject:game_memory temporary.powerup.spawnIndex set value 1
function match:events/powerup/choose with storage arenaproject:game_memory temporary.powerup
function match:events/powerup/select with storage arenaproject:game_memory temporary.powerup

# Anteprima sul punto scelto
function match:events/powerup/incoming with storage arenaproject:game_memory temporary.powerup
data remove storage arenaproject:game_memory temporary.powerup
stopwatch create match:powerup/incoming

# Feedback in chat
tellraw @a [{"text":"ᴘᴏᴛᴇɴᴢɪᴀᴍᴇɴᴛᴏ","color":"light_purple","bold":true}, \
    {"text":" > ","color":"dark_gray","bold":false}, \
        {"text":"In arrivo tra 10s!","color":"gray","bold":false}]

# Feedback titolo
title @a times 2 8 2
title @a title [{"text":""}]
title @a subtitle [{"text":"ᴘᴏᴛᴇɴᴢɪᴀᴍᴇɴᴛᴏ ɪɴ ᴀʀʀɪᴠᴏ","color":"light_purple","bold":true}]

# Feedback sonoro
execute as @a at @s run playsound block.trial_spawner.about_to_spawn_item voice @a ~ ~ ~ 2 1.6

# Sidebar
function match:display/powerup/incoming
