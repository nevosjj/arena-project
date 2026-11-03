#################################################################
## Chiamato da root:ticks/skills                               ##
## Funzione tick di vampiric_chain                             ##
## Controlla se esiste ancora il bersaglio ancorato nel raggio ##
#################################################################

## Teletrasporto (proprietario)
$tp @s @e[type=player,distance=..2,limit=1,sort=nearest,tag=vampiric_chain_user.$(ID)]

## Controllo distanza bersaglio
$execute if entity @e[type=player,distance=$(range)..,limit=1,tag=vampiric_chain_target.$(ID)] run return run function skills:list/support/vampiric_chain/end with entity @s data 

## temp++ 
scoreboard players add @s temp 1

## Creazione catena (ogni 2 tick)
execute if score @s temp matches 2.. run function skills:list/support/vampiric_chain/chain with entity @s data