#####################################################
## Chiamato da skills:activations/flow/generic     ##
## Imposta un oggetto al posto dell'abilità        ##
## Questo fa capire all'utente                     ##
## che l'abilità non è disponibile                 ##
#####################################################

## RIMOZIONE Item
item replace entity @s weapon.mainhand with air

## INSERIMENTO Item di non disponibilità
$item replace entity @s hotbar.$(hotbarIndex) with red_stained_glass_pane[custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]

## TAG ESCLUSIVO
# Support, Utility, Ultimate
# OFFENSIVE = NO
tag @s remove execute_item_removal