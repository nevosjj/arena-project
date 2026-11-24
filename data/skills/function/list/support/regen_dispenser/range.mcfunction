##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Esecutore e posizione: il marker del cerchio         ##
## (centro del dispenser) | Macro: i suoi data          ##
## Gira su se stesso di 6° a tick e disegna 6 punti a   ##
## 60° sul bordo del raggio, all'altezza dei piedi:     ##
## un giro completo ogni 10 tick.                       ##
## Visibile SOLO agli alleati (stesso teamID).          ##
##########################################################

# Rotazione
rotate @s ~6 0

# Punti (piedi del caster = centro -1, +0.1)
$execute rotated ~ 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
$execute rotated ~60 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
$execute rotated ~120 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
$execute rotated ~180 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
$execute rotated ~240 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
$execute rotated ~300 0 run particle dust{color:[0.55,1.0,0.45],scale:1.0} ^ ^-0.9 ^$(range) 0 0 0 0 1 force @a[tag=in_game,scores={teamID=$(teamID)}]
