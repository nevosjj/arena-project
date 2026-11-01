scoreboard players add @s temp 1
execute if function skills:auxiliary/wall_check run return run function skills:list/offensive/cookie_blaster/end
$execute if score @s temp matches $(distance).. run return run function skills:list/offensive/cookie_blaster/end
$execute if entity @e[type=player,distance=..$(range)] run function skills:auxiliary/search_damage with entity @s data