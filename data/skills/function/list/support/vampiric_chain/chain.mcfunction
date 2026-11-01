#################################################################
## Chiamato da vampiric_chain/tick (ogni 2 tick)               ##
## Disegna la catena tra utente e bersaglio (trail particle)   ##
## Alterna la direzione in base a temp6:                       ##
##   temp6 != 1 -> bersaglio -> utente                         ##
##   temp6 == 1 -> utente -> bersaglio                         ##
#################################################################

## Direzione
$execute unless score @s temp6 matches 1 run function skills:list/support/vampiric_chain/coords {from:"vampiric_chain_target.$(ID)",to:"vampiric_chain_user.$(ID)",color:6491927,duration:8,count:4}
$execute if score @s temp6 matches 1 run function skills:list/support/vampiric_chain/coords {from:"vampiric_chain_user.$(ID)",to:"vampiric_chain_target.$(ID)",color:6491927,duration:8,count:4}

## Alterna temp6 (0/assente -> 1, 1 -> 0)
execute store success score @s temp6 unless score @s temp6 matches 1

## Reset
scoreboard players reset @s temp
scoreboard players reset @s temp2
