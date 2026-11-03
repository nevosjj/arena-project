########
# Chiamato da ability_source
########

title @s times 2 3 2
title @s title ""
title @s subtitle [{"text":"!!!","color":"dark_red","bold":true}]
execute at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1 1.7
execute at @s run playsound block.note_block.basedrum ui @s ~ ~ ~ 1 1.7