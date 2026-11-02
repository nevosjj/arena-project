scoreboard players add @s temp 1
execute if function skills:auxiliary/wall_check run return run function skills:list/offensive/cookie_blaster/end
$execute if score @s temp matches $(distance).. run return run function skills:list/offensive/cookie_blaster/end
function skills:auxiliary/targeting/search_damage_single with entity @s data