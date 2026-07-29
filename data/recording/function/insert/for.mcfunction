#######
# chiamato da recording:insert/everything
#######

# Scrittura dati
$function recording:writing/texture with storage api.nevosjj.lobby:match_list elements[$(insertIndex)]
$function recording:writing/name with storage api.nevosjj.lobby:match_list elements[$(insertIndex)]
$function recording:writing/lore with storage api.nevosjj.lobby:match_list elements[$(insertIndex)]
$function recording:writing/data with storage api.nevosjj.lobby:match_list elements[$(insertIndex)]

# Aumento indice
execute store result score #match_list temp run data get storage api.nevosjj.lobby:match_list temp.insertIndex
scoreboard players add #match_list temp 1
execute store result storage api.nevosjj.lobby:match_list temp.insertIndex int 1.0 run scoreboard players get #match_list temp

execute if score #match_list temp matches ..6 run return run function recording:insert/for with storage api.nevosjj.lobby:match_list temp
execute if score #match_list temp matches 7.. run return run scoreboard players reset #match_list temp