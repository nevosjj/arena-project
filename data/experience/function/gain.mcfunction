# Aggiunta di esperienza (col tempo)
scoreboard players reset @s experience_timer

# Statistiche post-partita (prima dell'aumento)
data modify storage arenaproject:game_memory xpStats.objective set value "timer_xp_generated"
execute store result storage arenaproject:game_memory xpStats.gain int 1 run scoreboard players get @s experience_gain
function experience:stats with storage arenaproject:game_memory xpStats

# Già a 100: tutta l'XP è scarto (contata sopra), niente aumento
execute if score @s experience_level matches 100.. run return 0

scoreboard players operation @s experience_level += @s experience_gain
execute store result storage arenaproject:game_memory temporary_exp.expGain int 1.0 run scoreboard players get @s experience_level
function experience:macro with storage arenaproject:game_memory temporary_exp
stopsound @s * entity.player.levelup