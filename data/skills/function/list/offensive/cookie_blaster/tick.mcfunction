scoreboard players add @s temp 1
execute unless blocks ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 ~ ~ ~ all run function skills:list/offensive/cookie_blaster/end
$execute if score @s temp matches $(abilityDistance).. run function skills:list/offensive/cookie_blaster/end
$execute if entity @e[type=player,distance=..$(abilityRange)] run function skills:auxiliary/search_damage with entity @s data