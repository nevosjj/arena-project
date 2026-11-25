#################################################################
## Chiamato da root:ticks/skills                               ##
## Funzione tick di vampiric_chain                             ##
## Controlla se esiste ancora il bersaglio ancorato nel raggio ##
#################################################################

## Teletrasporto (proprietario)
$tp @s @a[distance=..2,limit=1,sort=nearest,tag=vampiric_chain_user.$(ID)]

## Durata (score sul marker, preso da data.duration): a 0 la catena si spezza
execute if score @s duration.support matches ..0 run return run function skills:list/support/vampiric_chain/end with entity @s data
scoreboard players remove @s duration.support 1

## Controllo distanza bersaglio
$execute if entity @a[distance=$(range)..,limit=1,tag=vampiric_chain_target.$(ID)] run return run function skills:list/support/vampiric_chain/end with entity @s data 

## temp++ 
scoreboard players add @s temp 1

## Arco del raggio (ogni 2 tick, solo per l'utente)
execute if score @s temp matches 2.. run function skills:list/support/vampiric_chain/arc_start with entity @s data

## Creazione catena (ogni 2 tick)
execute if score @s temp matches 2.. run function skills:list/support/vampiric_chain/chain with entity @s data