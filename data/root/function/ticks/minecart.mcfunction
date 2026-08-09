# Inventario selezione
execute if items entity @s weapon.mainhand chest run scoreboard players set @s inventory.selection 1
execute unless items entity @s weapon.mainhand chest run scoreboard players set @s inventory.selection 0

# Controllo booleane
execute if score @s inventory.selection matches 1 if score @s inventory_prev.selection matches 0 at @s run \
    summon chest_minecart ~ ~1 ~ \
    {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["selection_minecart"]}
execute if score @s inventory.selection matches 1 if score @s inventory_prev.selection matches 0 at @s run function selection:insertion/movements/skill_hub

execute if score @s inventory.selection matches 0 if score @s inventory_prev.selection matches 1 at @s run function selection:insertion/minecart/kill
scoreboard players operation @s inventory_prev.selection = @s inventory.selection

# Controllo selezione
execute if items entity @s player.cursor *[custom_data~{select_item:true}] at @s run function selection:insertion/movements/init
execute if items entity @s player.cursor *[custom_data~{select_back:true}] at @s run function selection:insertion/movements/go_back
execute if items entity @s player.cursor *[custom_data~{select_skill:true}] at @s run function selection:insertion/select/skill