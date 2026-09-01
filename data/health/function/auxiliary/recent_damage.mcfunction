#######################################################################################
## Chiamata da root:tick                                                             ##
## Funzione che ha la responsabilità di maneggiare il contatore di danni recenti     ##
#######################################################################################

# Aumento
scoreboard players add @s recent_damage.timer 1

# Caso base
execute if score @s recent_damage.timer matches 40.. run return run function health:auxiliary/reset_rdmg