#################################################################
## Chiamato da vampiric_chain/tick (ogni 2 tick)               ##
## Disegna la catena tra utente e bersaglio (trail particle)   ##
## Alterna la direzione in base a bool:                        ##
##   bool != 1 -> bersaglio -> utente                          ##
##   bool == 1 -> utente -> bersaglio                          ##
#################################################################

## Direzione
$execute unless score @s bool matches 1 run function skills:list/support/vampiric_chain/trail {from:"vampiric_chain_target.$(ID)",to:"vampiric_chain_user.$(ID)",color:6491927,duration:8,count:4}
$execute if score @s bool matches 1 run function skills:list/support/vampiric_chain/trail {from:"vampiric_chain_user.$(ID)",to:"vampiric_chain_target.$(ID)",color:6491927,duration:8,count:4}

# Suono di sottofondo
playsound minecraft:block.chain.place player @a ~ ~ ~ 0.1 1.6

## Alterna bool (0/assente -> 1, 1 -> 0)
execute store success score @s bool unless score @s bool matches 1

## Reset
scoreboard players reset @s temp
scoreboard players reset @s temp2
