#################################################
## Chiamato da skills:activations/flow/generic ##
## Macro: hotbarIndex, glassItem/Name/Color    ##
## Imposta un oggetto al posto dell'abilità    ##
## Questo fa capire all'utente                 ##
## che l'abilità non è disponibile             ##
#################################################

## RIMOZIONE Item
item replace entity @s weapon.mainhand with air

## INSERIMENTO Item di non disponibilità
# glassItem, glassName, glassColor: impostati in skills:activations/flow/generic || cooldown
$item replace entity @s hotbar.$(hotbarIndex) with $(glassItem)[custom_name=[{"text":"$(glassName)","color":"$(glassColor)","bold":true,"italic":false}]]

## TAG ESCLUSIVO
# Support, Utility, Ultimate
# OFFENSIVE = NO
tag @s remove execute_item_removal
