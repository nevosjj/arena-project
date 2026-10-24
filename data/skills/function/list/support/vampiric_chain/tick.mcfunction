#################################################################
## Chiamato da root:ticks/skills                               ##
## Funzione tick di vampiric_chain                             ##
## Controlla se esiste ancora il bersaglio ancorato nel raggio ##
#################################################################

## Aggiornamento posizione in base al proprietario
$tp @s @e[type=player,distance=..2,limit=1,sort=nearest,tag=vampiric_chain_user.ID_$(ID)]

## Controllo
$execute unless entity @e[type=player,distance=..$(range),limit=1,tag=vampiric_chain_target.ID_$(ID)] run return run function skills:list/support/vampiric_chain/reset

# Feedback particellare
particle cloud ~ ~1 ~ 2 2 2 0 10 force