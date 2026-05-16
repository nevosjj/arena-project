# Se già dentro
execute on attacker unless entity @s[tag=1v1.queued] at @s run return run function matchmaking:1v1/cant_dequeue

# Rimuovi tag
execute on attacker run tag @s remove 1v1.queued

# Rimozione attacco
data remove entity @s attack

# Altrimenti, esegui default
execute unless entity @s[tag=queueing] run say true, removed
execute unless entity @s[tag=queueing] run scoreboard players remove @s counter 1