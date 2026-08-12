# Rimozione cancelli
function match:open with storage arenaproject:map_data temporary

# Distribuzione oggetti da combattimento
clear @a
item replace entity @a hotbar.0 with blaze_rod[item_model="minecraft:iron_sword",minecraft:blocks_attacks={},attribute_modifiers=[{id:"offensive_sword",type:"attack_damage",amount:0,operation:"add_value"}],minecraft:custom_data={skill:{offensive:1b}},custom_name=[{"text":"Spada offensiva","color":"#d36464","bold":true,"italic":false}]] 1
item replace entity @a hotbar.1 with red_stained_glass_pane[custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]
item replace entity @a hotbar.2 with red_stained_glass_pane[custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]
item replace entity @a hotbar.3 with red_stained_glass_pane[custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]

#item replace entity @a hotbar.1 with yellow_dye[minecraft:blocks_attacks={},minecraft:custom_data={skill:{utility:1b}}]
#item replace entity @a hotbar.2 with green_dye[minecraft:blocks_attacks={},minecraft:custom_data={skill:{support:1b}}]
#item replace entity @a hotbar.3 with orange_dye[minecraft:blocks_attacks={},minecraft:custom_data={skill:{ultimate:1b}}]

# Ricarica iniziale
scoreboard players set @a[tag=in_game] cooldown.support_timer 5
scoreboard players set @a[tag=in_game] cooldown.utility_timer 5
execute as @a[tag=in_game] run scoreboard players operation @s cooldown.ultimate_timer = @s cooldown.ultimate
tag @a[tag=in_game] add utility_down
tag @a[tag=in_game] add support_down
tag @a[tag=in_game] add ultimate_down

# Rimozione orologio
stopwatch remove match:first_timer
stopwatch remove match:break
stopwatch remove match:sound
stopwatch remove match:opening

# Reset
scoreboard players reset #match counter
scoreboard players reset #match temp

# Rimozione bossbar
bossbar remove match:timer

# Aggiunta orologio overtime
stopwatch create match:overtime

# Feedback
tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Combattete!","color":"red","bold":false}]
execute as @a at @s run playsound entity.ender_dragon.ambient voice @s ~ ~ ~ 1 0.9

# Permesso all'energia ai giocanti
tag @a[tag=in_game] add energy.activated

# Rimozione tag selezione
tag @a[tag=in_game] remove selecting
tag @a[tag=in_game] remove must_select.offensive
tag @a[tag=in_game] remove must_select.utility
tag @a[tag=in_game] remove must_select.support
tag @a[tag=in_game] remove must_select.ultimate