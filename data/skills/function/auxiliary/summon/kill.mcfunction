##################################################################################
## Chiamata da skills:auxiliary/summon/*, health:summon/death e dalle destroyed ##
## Esecutore: una parte di evocazione (hitbox, cervello o visual)               ##
## Rimozione pulita, senza score fantasma.                                      ##
##################################################################################

scoreboard players reset @s
kill @s
