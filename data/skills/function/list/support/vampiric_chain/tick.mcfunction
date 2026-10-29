#################################################################
## Chiamato da root:ticks/skills                               ##
## Funzione tick di vampiric_chain                             ##
## Controlla se esiste ancora il bersaglio ancorato nel raggio ##
#################################################################

## Teletrasporto (proprietario)
$tp @s @e[type=player,distance=..2,limit=1,sort=nearest,tag=vampiric_chain_user.$(ID)]

## Controllo distanza bersaglio
$execute if entity @e[type=player,distance=$(range)..,limit=1,tag=vampiric_chain_target.$(ID)] run return run function skills:list/support/vampiric_chain/reset with entity @s data 

## temp++ 
scoreboard players add @s temp 1

## Creazione raggio d'azione catena
execute if score @s temp matches 5.. run function skills:list/support/vampiric_chain/radius with entity @s data