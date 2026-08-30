#########################################################
## Chiamato da selection:insertion/select/descriptions ##
## Crea il tasto di conferma selezione abilità         ##
#########################################################

# Inserimento bottone
$data modify entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..2] Items[{Slot:16b}] set value {id:"minecraft:emerald_block",count:1,components:{"minecraft:custom_name":{"color":"dark_green","bold":true,"italic":false,"text":"Conferma scelta"},"minecraft:custom_data":{select_skill:true,item_skill_id:$(skill_index),item_skill_type:$(skill_string)}}}