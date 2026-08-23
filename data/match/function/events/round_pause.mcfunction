###################################
## Chiamata da match:events/check_life
## La funzione crea un stopwatch di 3 secondi prima di passare al nuovo round
## annunciando chi ha vinto
###################################

# Stopwatch
stopwatch create match:round_break

# Distribuzione tag
# Perdente
tag @s add round.loser
# Vincitore
execute as @a[tag=in_game] unless score @s death matches 1.. run tag @s add round.winner

# Annuncia vincitore
playsound minecraft:block.beacon.power_select ui @a ~ ~ ~ 10 1
title @a times 10 40 10
title @a title [{"selector":"@e[type=player,tag=round.winner,limit=1,sort=nearest]","bold":true,"color":"#b1def8"}]
title @a subtitle [{"text":"ha vinto il round!","color":"gray","bold":false}]