# Moltiplicatore overtime
scoreboard players set #match temp 100
scoreboard players set #match temp2 100
scoreboard players operation #match temp2 += #match multiplier
scoreboard players operation @s incoming_damage *= #match temp2
scoreboard players operation @s incoming_damage /= #match temp

# Rimozione danni resistenza danni
execute unless score @s stat.defense matches 0 run function health:halve_damage

# Scudo osseo
# Interrompe la fonte di danno immediatamente
execute if entity @s[tag=skill.bone_shield] run function skills:list/support/bone_shield/marker

# Feedback
#$execute if score @s ability_damage matches 1.. run \
    tellraw @s [ \
    {"atlas":"minecraft:gui","sprite":"mob_effect/wither"},\
    {"text":" > ","color":"dark_gray","bold":false},\
    {"text":"-","color":"red","bold":false},\
    {"score":{objective:"incoming_damage","name":"@s"},"color":"dark_red","bold":false},\
    {"text":" da ","color":"gray","bold":false},\
    {"text":"$(abilityDisplay)"},\
    {"text":" di ","color":"gray","bold":false},\
    {"text":"$(playerName)"},\
    {"text":"!","color":"gray","bold":false},\
    ]

# Feedback in-game text_display
execute store result storage arenaproject:game_memory damageFeedback.text int 1.0 run scoreboard players get @s incoming_damage
function health:summon_text with storage arenaproject:game_memory damageFeedback

# Rimozione
scoreboard players operation @s stat.current_health -= @s incoming_damage

# Aumento danni recenti
scoreboard players operation @s recent_damage += @s incoming_damage

# Reset dei danni recenti
scoreboard players set @s recent_damage.timer 1

# Accumula danni ricevuti 
scoreboard players operation @s poststat.damage_received += @s incoming_damage

# Aggiornamento actionbar
function health:actionbar

# Controllo morte
execute if score @s stat.current_health matches ..0 at @s run function health:death

# Reset
data remove storage arenaproject:game_memory damageFeedback
scoreboard players reset @s melee_damage
scoreboard players reset @s ability_damage
scoreboard players reset @s incoming_damage