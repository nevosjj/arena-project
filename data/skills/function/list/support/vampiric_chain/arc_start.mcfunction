###############################################################
## Chiamata da skills:list/support/vampiric_chain/tick       ##
## Esecutore: il marker (sui piedi dell'utente, ogni 2 tick) ##
## Macro: i suoi data (ID, range)                            ##
## Orienta l'arco verso il bersaglio, in orizzontale.        ##
###############################################################

$execute at @s facing entity @e[type=player,limit=1,tag=vampiric_chain_target.$(ID)] feet rotated ~ 0 positioned ~ ~0.2 ~ \
    run function skills:list/support/vampiric_chain/arc with entity @s data
