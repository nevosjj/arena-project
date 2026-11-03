#############################################################
## Chiamata da root:ticks/main                             ##
## Esecutore e posizione: il marker degli anelli           ##
## Macro: i suoi data (ID del giocatore)                   ##
## Segue il giocatore ruotando e disegna 3 anelli cremisi. ##
## Senza più berserk il marker si rimuove da solo.         ##
#############################################################

# Berserk finito
$execute unless entity @a[tag=powerup.berserk,scores={ID=$(ID)},limit=1] run return run kill @s

# Segue il giocatore ruotando
$execute positioned as @a[tag=powerup.berserk,scores={ID=$(ID)},limit=1] run tp @s ~ ~ ~ ~15 ~

# Anelli (piedi, busto, testa), 2 punti opposti per anello
execute at @s rotated ~ 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^0.2 ^0.6 0 0 0 0 1
execute at @s rotated ~180 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^0.2 ^0.6 0 0 0 0 1
execute at @s rotated ~60 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^1 ^0.6 0 0 0 0 1
execute at @s rotated ~240 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^1 ^0.6 0 0 0 0 1
execute at @s rotated ~120 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^1.8 ^0.6 0 0 0 0 1
execute at @s rotated ~300 0 run particle dust{color:[0.6,0.03,0.12],scale:0.8} ^ ^1.8 ^0.6 0 0 0 0 1
