###########################################################
## Chiamata da root:ticks/main                           ##
## Esecutore e posizione: il marker in anteprima         ##
## Vortice cilindrico di fuochi d'artificio sul punto in ##
## cui apparirà il potenziamento.                        ##
###########################################################

# Rotazione del vortice
tp @s ~ ~ ~ ~18 ~

# 4 livelli, 2 filamenti opposti, sfasati di 45 gradi per livello
execute rotated ~ 0 run particle firework ^ ^0.1 ^0.7 0 0 0 0 1 force
execute rotated ~180 0 run particle firework ^ ^0.1 ^0.7 0 0 0 0 1 force
execute rotated ~45 0 run particle firework ^ ^0.6 ^0.7 0 0 0 0 1 force
execute rotated ~225 0 run particle firework ^ ^0.6 ^0.7 0 0 0 0 1 force
execute rotated ~90 0 run particle firework ^ ^1.1 ^0.7 0 0 0 0 1 force
execute rotated ~270 0 run particle firework ^ ^1.1 ^0.7 0 0 0 0 1 force
execute rotated ~135 0 run particle firework ^ ^1.6 ^0.7 0 0 0 0 1 force
execute rotated ~315 0 run particle firework ^ ^1.6 ^0.7 0 0 0 0 1 force
