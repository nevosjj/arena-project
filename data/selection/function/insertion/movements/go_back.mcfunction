# Feedback
execute at @s run playsound entity.chicken.egg ui @s ~ ~ ~ 10 1.9

# Clear
item replace entity @s player.cursor with air

# Inserimento menu principale di selezione
data merge entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..4] \
    {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["selection_minecart"], \
    Items:[ \
    {Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_offensive:true,select_item:true},"minecraft:item_model":"minecraft:diamond_sword","minecraft:custom_name":{"bold":true,"color":"red","italic":false,"text":"Abilità offensive"}}}, \
    {Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_utility:true,select_item:true},"minecraft:item_model":"minecraft:string","minecraft:custom_name":{"bold":true,"color":"yellow","italic":false,"text":"Abilità utilità"}}}, \
    {Slot:14b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_support:true,select_item:true},"minecraft:item_model":"minecraft:glistering_melon_slice","minecraft:custom_name":{"bold":true,"color":"green","italic":false,"text":"Abilità di supporto"}}}, \
    {Slot:16b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_ultimate:true,select_item:true},"minecraft:item_model":"minecraft:nether_star","minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Abilità ultimate"}}}]}