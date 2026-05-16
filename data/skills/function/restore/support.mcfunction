# Reset
tag @s remove support_down
scoreboard players reset @s cooldown.support_timer

# Feedback sonoro
playsound entity.firework_rocket.twinkle ui @s ~ ~ ~ 10 1.9

# Titolo
title @s times 3 4 3
title @s title ""
title @s subtitle [{"atlas":"minecraft:items","italic":false,"sprite":"item/green_dye"},{"atlas":"minecraft:gui","sprite":"container/beacon/confirm"}]

# Feedback testo
tellraw @s [\
    {"atlas":"minecraft:gui","sprite":"icon/checkmark"},\
    {"text":" >","color":"dark_gray"},\
    {"text":" Abilità supporto pronta.","color":"gray"},\
    ]