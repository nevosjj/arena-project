###########################################################
## Chiamata da root:ticks/main                           ##
## Esecutore e posizione: il marker in anteprima         ##
## Vortice cilindrico di fuochi d'artificio sul punto in ##
## cui apparirà il potenziamento.                        ##
###########################################################

# Rotazione del vortice (il marker ha pitch 0, i ^ restano orizzontali)
tp @s ~ ~ ~ ~9 ~

# 2 filamenti verticali opposti (r = 1.4), 8 livelli fino a 4 blocchi
particle firework ^ ^0.5 ^1.4 0 0 0 0 1 force
particle firework ^ ^0.5 ^-1.4 0 0 0 0 1 force
particle firework ^ ^1 ^1.4 0 0 0 0 1 force
particle firework ^ ^1 ^-1.4 0 0 0 0 1 force
particle firework ^ ^1.5 ^1.4 0 0 0 0 1 force
particle firework ^ ^1.5 ^-1.4 0 0 0 0 1 force
particle firework ^ ^2 ^1.4 0 0 0 0 1 force
particle firework ^ ^2 ^-1.4 0 0 0 0 1 force
particle firework ^ ^2.5 ^1.4 0 0 0 0 1 force
particle firework ^ ^2.5 ^-1.4 0 0 0 0 1 force
particle firework ^ ^3 ^1.4 0 0 0 0 1 force
particle firework ^ ^3 ^-1.4 0 0 0 0 1 force
particle firework ^ ^3.5 ^1.4 0 0 0 0 1 force
particle firework ^ ^3.5 ^-1.4 0 0 0 0 1 force
particle firework ^ ^4 ^1.4 0 0 0 0 1 force
particle firework ^ ^4 ^-1.4 0 0 0 0 1 force
particle firework ^ ^4.5 ^1.4 0 0 0 0 1 force
particle firework ^ ^4.5 ^-1.4 0 0 0 0 1 force
particle firework ^ ^5 ^1.4 0 0 0 0 1 force
particle firework ^ ^5 ^-1.4 0 0 0 0 1 force