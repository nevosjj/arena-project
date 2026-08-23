######################################
## Funzione ausiliaria, mette testa ##
## del giocatore con ID             ##
######################################

$data modify block 9 -55 39 Items append value {Slot:$(playerIndexChest)b,id:"minecraft:player_head",count:1,components:{"minecraft:profile":"$(username)","minecraft:custom_name":{"bold":true,"italic":false,"text":"$(username)"},"minecraft:lore":[{"bold":false,"color":"light_purple","italic":false,"text":"Giocatore #$(ID)"}]}}