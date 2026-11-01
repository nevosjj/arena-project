$summon marker ~ ~1 ~ {Tags:["vampiric_chain.radius"],data:{particles:"minecraft:dust_color_transition{from_color:[0.443,0.420,0.541],to_color:[0.565,0.071,1.000],scale:3}",distance:$(range)}}
scoreboard players reset @s temp
execute as @e[type=marker,limit=1,sort=nearest,tag=vampiric_chain.radius,distance=..2] at @s run function skills:auxiliary/ability_range with entity @s data