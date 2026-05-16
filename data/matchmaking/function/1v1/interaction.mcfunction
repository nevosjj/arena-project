# Se già dentro
execute on target if entity @s[tag=1v1.queued] at @s run return run function matchmaking:1v1/cant_queue

# Aggiunta tag
execute on target at @s run function matchmaking:1v1/queue

# Rimozione interazione
data remove entity @s interaction

# Aggiungi quantità giocatori in queue (scoreholder è il marker)
execute unless entity @s[tag=queueing] run scoreboard players add @s counter 1