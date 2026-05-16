# Aggiunta di esperienza (col tempo)
scoreboard players reset @s experience_timer
scoreboard players operation @s experience_level += @s experience_gain
execute store result storage arenaproject:game_memory temporary_exp.expGain int 1.0 run scoreboard players get @s experience_level
function experience:macro with storage arenaproject:game_memory temporary_exp
stopsound @s * entity.player.levelup