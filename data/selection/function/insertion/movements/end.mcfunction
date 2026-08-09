item replace entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..4] container.26 with barrier[custom_data={select_back:true},custom_name={"text":"Torna indietro","color":"red","italic":false}]
scoreboard players reset #selection_check
scoreboard players reset #selection_loop
data remove storage arenaproject:selection temporary