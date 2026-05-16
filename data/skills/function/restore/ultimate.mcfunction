# Reset
tag @s remove ultimate_down
scoreboard players reset @s cooldown.ultimate_timer

# Feedback sonoro
playsound entity.wither.spawn ui @s ~ ~ ~ 10 1.9

# Titolo
title @s times 3 4 3
title @s title ""
title @s subtitle [{"atlas":"minecraft:items","italic":false,"sprite":"item/orange_dye"},{"atlas":"minecraft:gui","sprite":"container/beacon/confirm"}]

# Feedback testo
tellraw @s [\
    {"atlas":"minecraft:gui","sprite":"icon/checkmark"},\
    {"text":" >","color":"dark_gray"},\
    {"text":" Abilità ultimate pronta.","color":"gray"},\
    ]