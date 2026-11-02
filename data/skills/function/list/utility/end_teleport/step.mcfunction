############################################################################
## Chiamata da skills:auxiliary/raycast/recursion (step di end_teleport)  ##
## Esecutore e posizione: il marker "shadow.recursion"                    ##
## Scia di fumo e controllo della hitbox del giocatore al prossimo passo. ##
## Il marker sta al busto: i piedi del giocatore sono 1 blocco sotto.     ##
############################################################################

# Feedback particellare
particle smoke ~ ~ ~ 0 0.8 0 0 3 force

# Hitbox: se al prossimo passo il giocatore non ci sta, si ferma qui
execute positioned ^ ^ ^0.333333 positioned ~ ~-1 ~ if function skills:auxiliary/hitbox_check run return 1

return fail