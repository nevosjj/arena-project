###############################################
## Chiamato da root:stopwatches              ##
## La funzione attiva il sistema di overtime ##
###############################################

# Feedback in chat
$tellraw @a [{"text":"ᴏᴠᴇʀᴛɪᴍᴇ ","color":"dark_red","bold":true}, \
    {"text":" >","color":"dark_gray","bold":false}, \
        {"text":" +$(overtimeDamage)% ᴅᴀɴɴɪ ꜱᴜʙɪᴛɪ","color":"gray","bold":false}]

# Feedback titolo
title @a times 2 8 2
title @a title [{"text":""}]
title @a subtitle [{"text":"ᴏᴠᴇʀᴛɪᴍᴇ","color":"red","bold":true}]

# Feedback sonoro
execute as @a at @s run playsound entity.ghast.scream ui @s ~ ~ ~ 10 0

# Display
function match:display/overtime with storage match_data:1v1 list.1v1

# Aumento danno
$scoreboard players add #match multiplier $(overtimeDamage)

# Rimozione stopwatch
stopwatch remove match:overtime