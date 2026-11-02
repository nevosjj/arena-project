#################################################################
## Chiamata da root:ticks/skills                               ##
## Esecutore e posizione: ogni hitbox "player_summon"          ##
## Elimina le hitbox orfane, scala gli iframes, legge i melee. ##
#################################################################

# Hitbox orfana (cervello sparito senza remove): si elimina
scoreboard players operation #summon summon.ID = @s summon.ID
scoreboard players set #summon_linked temp 0
execute as @e[type=marker,tag=summon.brain,distance=..16] if score @s summon.ID = #summon summon.ID run scoreboard players set #summon_linked temp 1
execute if score #summon_linked temp matches 0 run function skills:auxiliary/summon/kill
scoreboard players reset #summon summon.ID
execute if score #summon_linked temp matches 0 run return run scoreboard players reset #summon_linked temp
scoreboard players reset #summon_linked temp

# Iframes
execute if score @s summon.iframes matches 1.. run scoreboard players remove @s summon.iframes 1

# Melee
execute if data entity @s attack run function health:summon/melee
