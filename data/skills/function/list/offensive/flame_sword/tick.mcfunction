
execute if score @s duration.offensive matches ..0 at @s run return run function skills:list/offensive/flame_sword/reset
scoreboard players remove @s duration.offensive 1
particle small_flame ~ ~1 ~ 0.2 0.8 0.2 0 1 force