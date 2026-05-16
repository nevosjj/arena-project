# Se già dentro
execute on target if entity @s[tag=1v1.queued] at @s run return run function matchmaking:1v1/cant_queue

# Aggiunta tag
execute on target run tag @s add 1v1.queued

# Rimozione interazione
data remove entity @s interaction

# Se l'interaction sta già facendo il queue, return fail
execute if entity @s[tag=queueing] run say fail

# Altrimenti, esegui default
execute unless entity @s[tag=queueing] run say true
execute unless entity @s[tag=queueing] run scoreboard players add @s counter 1