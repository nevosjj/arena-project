#########################################################
## Chiamato da selection:insertion/select/descriptions ##
## Crea la descrizione fruibile e completa             ##
#########################################################

$data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..3] Items append from storage ability_data:$(skill_string) skills[$(skill_index)].display.chestItems.Items[]