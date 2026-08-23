tellraw @a [{"text":"OVERTIME ","color":"dark_red","bold":true}, \
    {"text":" >","color":"dark_gray"}, \
        {"text":" +50% danni ricevuti.","color":"red","bold":false}]
execute as @a at @s run playsound entity.ghast.scream ui @s ~ ~ ~ 10 0
scoreboard players add #match multiplier 50
stopwatch remove match:overtime