# Inventario selezione
execute if items entity @s weapon.mainhand chest run scoreboard players set @s inventory.selection 1
execute unless items entity @s weapon.mainhand chest run scoreboard players set @s inventory.selection 0

# Controllo booleane
execute if score @s inventory.selection matches 1 if score @s inventory_prev.selection matches 0 at @s run \
    summon chest_minecart ~ ~1 ~ \
    {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["selection_minecart"], \
    Items:[ \
    {Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_offensive:true,select_item:true},"minecraft:item_model":"minecraft:diamond_sword","minecraft:custom_name":{"bold":true,"color":"red","italic":false,"text":"Abilità offensive"}}}, \
    {Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_utility:true,select_item:true},"minecraft:item_model":"minecraft:string","minecraft:custom_name":{"bold":true,"color":"yellow","italic":false,"text":"Abilità utilità"}}}, \
    {Slot:14b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_support:true,select_item:true},"minecraft:item_model":"minecraft:glistering_melon_slice","minecraft:custom_name":{"bold":true,"color":"green","italic":false,"text":"Abilità di supporto"}}}, \
    {Slot:16b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_data":{select_ultimate:true,select_item:true},"minecraft:item_model":"minecraft:nether_star","minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Abilità ultimate"}}}]}

execute if score @s inventory.selection matches 0 if score @s inventory_prev.selection matches 1 at @s run function selection:insertion/minecart/kill
scoreboard players operation @s inventory_prev.selection = @s inventory.selection

# Controllo selezione
execute if items entity @s player.cursor *[custom_data~{select_item:true}] at @s run function selection:insertion/movements/init
execute if items entity @s player.cursor *[custom_data~{select_back:true}] at @s run function selection:insertion/movements/go_back
execute if items entity @s player.cursor *[custom_data~{select_skill:true}] at @s run function selection:insertion/select/skill