# Vetro
execute at @s run function selection:insertion/minecart/glass

## Riempimento oggetti
# Offensiva
data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..2] Items append value {Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_offensive:true,select_item:true},"minecraft:item_model":"minecraft:blaze_powder","minecraft:custom_name":{"bold":true,"color":"red","italic":false,"text":"ᴏꜰꜰᴇɴꜱɪᴠᴇ"}}}
# Utilità
data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..2] Items append value {Slot:11b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_utility:true,select_item:true},"minecraft:item_model":"minecraft:fishing_rod","minecraft:custom_name":{"bold":true,"color":"yellow","italic":false,"text":"ᴜᴛɪʟɪᴛÀ"}}}
# Supporto
data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..2] Items append value {Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_support:true,select_item:true},"minecraft:item_model":"minecraft:totem_of_undying","minecraft:custom_name":{"bold":true,"color":"green","italic":false,"text":"ꜱᴜᴘᴘᴏʀᴛᴏ"}}}
# Ultimate
data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..2] Items append value {Slot:13b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_ultimate:true,select_item:true},"minecraft:item_model":"minecraft:nether_star","minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"ꜱᴜᴘʀᴇᴍᴀ"}}}
# Selezione random
data modify entity @e[type=chest_minecart,tag=selection_minecart,limit=1,sort=nearest,distance=..2] Items append value {Slot:16b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_random_skill:true,select_item:true},"minecraft:item_model":"minecraft:tnt","minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"ꜱᴄᴇʟᴛᴀ ᴄᴀꜱᴜᴀʟᴇ!"}}}