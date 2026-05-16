# Se già dentro
execute on attacker unless entity @s[tag=1v1.queued] at @s run return run function matchmaking:1v1/cant_dequeue

# Rimuovi tag
execute on attacker at @s run function matchmaking:1v1/dequeue

# Rimozione attacco
data remove entity @s attack

# Rimuovi quantità giocatori in queue (scoreholder è il marker)
execute unless entity @s[tag=queueing] run scoreboard players remove @s counter 1