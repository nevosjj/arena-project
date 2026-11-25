###################################
## Chiamata da match:events/check_life
## La funzione crea un stopwatch di 3 secondi prima di passare al nuovo round
## annunciando chi ha vinto
###################################

# Ferma l'overtime
function match:events/overtime/stop

# Ferma i potenziamenti (e i berserk attivi)
function match:events/powerup/logic/clean

# Registrazione: fine del round
function recording:rounds/end

# Interazioni con le entità di nuovo normali fino al prossimo round (tolte in match:events/end_selection)
execute as @a[tag=in_game] run attribute @s minecraft:entity_interaction_range base set 3.0

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
title @a title [{"selector":"@a[tag=round.winner,limit=1,sort=nearest]","bold":true,"color":"#b1def8"}]
title @a subtitle [{"text":"ha vinto il round!","color":"gray","bold":false}]