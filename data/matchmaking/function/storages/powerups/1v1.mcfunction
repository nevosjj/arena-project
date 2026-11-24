##########################################################################
## Chiamata da matchmaking:1v1/start                                    ##
## Imposta il timer e la lista dei potenziamenti in                     ##
## match_data:1v1 list.1v1. Chiamata DOPO storages/modes/1v1.           ##
## Parametri per tipo usati come macro in match:events/powerup/types/*. ##
##########################################################################

data modify storage match_data:1v1 list.1v1.powerupTimer set value 40
data modify storage match_data:1v1 list.1v1.powerups set value [\
    {name:"heal",enabled:true,amount:250},\
    {name:"berserk",enabled:true,duration:200,bonus:20},\
]
