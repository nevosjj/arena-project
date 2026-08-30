#########################################################
## Chiamato da selection:insertion/select/descriptions ##
## Crea la descrizione fruibile e completa             ##
#########################################################

$data modify entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] Items merge from storage ability_data:$(skill_type_str) skills[$(item_skill_id)].display.chestItems
