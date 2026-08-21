# Ricerca danno
function skills:auxiliary/search_damage with entity @s data

# Feedback sonoro
playsound entity.breeze.land hostile @a ~ ~ ~ 0.5 0 0.1

# Marker
$summon marker ~ ~ ~ {Tags:["tornado.range"],data:{particles:"dust{color:[0.541,0.412,0.153],scale:2.0}",distance:"$(range)"}}
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=tornado.range] at @s run function skills:auxiliary/ability_range with entity @s data

# Reinserimento score
$scoreboard players set @s counter.utility $(interval)