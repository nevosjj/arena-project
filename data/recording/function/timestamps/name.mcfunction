##########################################################
## Chiamata da recording:timestamps/*                     ##
## Esecutore: un giocatore                              ##
## Mette il suo nome in match_recorder:data name        ##
##########################################################

loot replace entity @s enderchest.0 loot recording:player_name
data modify storage match_recorder:data name set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name
