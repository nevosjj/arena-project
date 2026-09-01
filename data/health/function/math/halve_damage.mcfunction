#########
# Chiamata da health:math/incoming_damage
#########

# Memorizzo il danno prima della riduzione
scoreboard players operation #damage_before_halving temp = @s incoming_damage

# Ottengo la percentuale di riduzione danno
scoreboard players set #damage_halver temp 100
scoreboard players operation #damage_halver temp -= @s stat.defense

# Se è sotto 0, setta a 0
execute if score #damage_halver temp matches ..-1 run scoreboard players set #damage_halver temp 0

# Calcola il danno ridotto
scoreboard players operation @s incoming_damage *= #damage_halver temp
scoreboard players operation @s incoming_damage /= #constant.100 temp

# Calcolo il danno effettivamente ridotto e lo salvo
scoreboard players operation #damage_halved temp = #damage_before_halving temp
scoreboard players operation #damage_halved temp -= @s incoming_damage
scoreboard players operation @s poststat.damage_halved += #damage_halved temp

# Reset delle temp
scoreboard players reset #damage_halver
scoreboard players reset #damage_before_halving
scoreboard players reset #damage_halved