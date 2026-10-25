#####################################################
## Chiamato da skills:activations/flow/generic     ##
## Estrae il nome di un giocatore                  ##
## Serve a determinare fonte danno e altre utility ##
## Lo trova mettendo un Emerald con lo stesso nome ##
## usando le loot_table (set_name function)        ##
#####################################################

## Inserimento EMERALD
loot replace entity @s enderchest.0 loot skills:player_name

## ESTRAZIONE nome emerald allo storage temp
data modify storage arenaproject:game_memory temporary.activation.playerName set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name