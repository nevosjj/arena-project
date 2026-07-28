#########
# Chiamata da health:incoming_damage
#########

scoreboard players set #damage_halver temp 100
scoreboard players operation #damage_halver temp -= @s stat.defense
execute if score #damage_halver temp matches ..-1 run scoreboard players set #damage_halver temp 0

scoreboard players operation @s incoming_damage *= #damage_halver temp
scoreboard players operation @s incoming_damage /= #constant.100 temp
scoreboard players reset #damage_halver