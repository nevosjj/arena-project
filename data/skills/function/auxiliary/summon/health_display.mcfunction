#####################################################################
## Chiamata da skills:auxiliary/summon/create                      ##
## || health:summon/incoming_damage                                ##
## Esecutore: l'evocazione (hitbox)                                ##
## Aggiorna il testo dell'indicatore HP (passeggero della hitbox). ##
#####################################################################

execute store result storage arenaproject:game_memory summonHealth.hp int 1 run scoreboard players get @s summon.health
execute if score @s summon.health matches ..-1 run data modify storage arenaproject:game_memory summonHealth.hp set value 0
function skills:auxiliary/summon/health_text with storage arenaproject:game_memory summonHealth
data remove storage arenaproject:game_memory summonHealth
