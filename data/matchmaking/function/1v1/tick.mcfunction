#############################################################
## Chiamata da matchmaking:tick                            ##
## Esecutore: interaction della coda 1v1 (matchmaking.1v1) ##
#############################################################

# Click destro: entra in coda
execute if data entity @s interaction run function matchmaking:1v1/interaction

# Click sinistro: esce dalla coda
execute if data entity @s attack run function matchmaking:1v1/attack

# Quota raggiunta: avvio del conto alla rovescia
execute if score @s counter matches 2.. run function matchmaking:1v1/stopwatch
