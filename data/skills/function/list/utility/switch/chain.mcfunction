#################################################################
## Chiamato da switch/tick (ogni 2 tick)                       ##
## Scia di scambio tra utente e bersaglio (trail particle)     ##
## Alterna la direzione in base a temp3:                       ##
##   temp3 != 1 -> utente -> bersaglio (nera)                  ##
##   temp3 == 1 -> bersaglio -> utente (bianca)                ##
## temp2 fa da contatore e viene azzerato qui sotto            ##
#################################################################

## Direzione
$execute unless score @s temp3 matches 1 run function skills:list/utility/switch/trail {from:"switch_user.$(ID)",to:"switch_target.$(ID)",color:0,duration:15,count:8}
$execute if score @s temp3 matches 1 run function skills:list/utility/switch/trail {from:"switch_target.$(ID)",to:"switch_user.$(ID)",color:16777215,duration:15,count:8}

## Alterna temp3 (0/assente -> 1, 1 -> 0)
execute store success score @s temp3 unless score @s temp3 matches 1

## Reset
scoreboard players reset @s temp2
