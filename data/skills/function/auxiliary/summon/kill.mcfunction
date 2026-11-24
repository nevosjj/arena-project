########################################################################################
## Chiamata da health:summon/death, summon/cleanup e dalle abilità (fine durata ecc.) ##
## Esecutore: una parte di evocazione (hitbox, visual, proiettile)                    ##
## Rimozione pulita, senza score fantasma.                                            ##
########################################################################################

scoreboard players reset @s
# Passeggeri (es. indicatore HP della hitbox)
execute on passengers run kill @s
kill @s
