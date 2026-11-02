##############################################################
## Chiamata da skills:list/utility/end_teleport/init        ##
## Esecutore e posizione: il marker "shadow.recursion"      ##
## Raycast fino al muro o alla gittata, poi teletrasporto.  ##
##############################################################

# Raycast
function skills:auxiliary/raycast/start {step:"skills:list/utility/end_teleport/step"}

# Arrivo (nella posizione finale del marker)
execute at @s run function skills:list/utility/end_teleport/end
