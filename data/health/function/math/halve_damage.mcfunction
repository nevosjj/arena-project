##################################################################
## Chiamata da health:math/incoming_damage                      ##
## Esecutore: chi subisce il danno                              ##
## Riduce incoming_damage in base a stat.defense (minimo 0)     ##
## Provider: health:damage/defense, health:damage/halved_total  ##
##################################################################

# Danno assorbito dalla difesa (poststat), PRIMA di ridurre incoming_damage
execute store result score @s poststat.damage_halved run compute entity @s integer health:damage/halved_total

# Danno ridotto: incoming_damage * max(0, 100 - stat.defense) / 100
execute store result score @s incoming_damage run compute entity @s integer health:damage/defense
