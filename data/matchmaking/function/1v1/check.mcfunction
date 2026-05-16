# Preparazione
stopwatch remove match:queue
tag @e[type=interaction,tag=matchmaking.1v1] remove queueing

# Controllo se i giocatori non hanno annullato.
execute as @a[tag=1v1.queued] run scoreboard players add #matchmaking1v1 counter 1

# Successo
execute if score #matchmaking1v1 counter matches 2.. run function matchmaking:1v1/start

# Fallimento
execute unless score #matchmaking1v1 counter matches 2.. run function matchmaking:1v1/fail

# Reset
tag @a remove 1v1.queued
scoreboard players reset #matchmaking1v1 counter