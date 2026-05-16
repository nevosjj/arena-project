# Reset
tag @s remove utility_down
scoreboard players reset @s cooldown.utility_timer

# Feedback sonoro
playsound entity.iron_golem.repair ui @s ~ ~ ~ 10 1.9

# Titolo
title @s times 3 4 3
title @s title ""
title @s subtitle [{"atlas":"minecraft:items","italic":false,"sprite":"item/yellow_dye"},{"atlas":"minecraft:gui","sprite":"container/beacon/confirm"}]

# Feedback testo
tellraw @s [\
    {"atlas":"minecraft:gui","sprite":"icon/checkmark"},\
    {"text":" >","color":"dark_gray"},\
    {"text":" Abilità utilità pronta.","color":"gray"},\
    ]