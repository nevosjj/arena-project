#################################################################
## Funzione tick di vampiric_chain                             ##
## Controlla se esiste ancora il bersaglio ancorato nel raggio ##
#################################################################

## Controllo
$execute unless entity @e[type=player,distance=..$(range),limit=1,tag=vampiric_chain_target.ID_$(ID)] run return run function skills:list/support/vampiric_chain/interrupt

