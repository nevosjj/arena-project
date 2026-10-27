#############################################################
## Chiamato da skills:list/offensive/lightning_strike/init ##
## Crea l'attacco sul bersaglio                            ##
#############################################################

$execute at @e[type=player,limit=1,sort=nearest,tag=offensive.skill_target.$(ID)] run function skills:list/offensive/lightning_strike/destination