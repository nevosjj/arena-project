# Calcola quanto puoi guarire (max_health - current_health)
scoreboard players operation @s heal_available = @s stat.max_health
scoreboard players operation @s heal_available -= @s stat.current_health

# Se la guarigione è più dello spazio disponibile, limita
execute if score @s incoming_heal > @s heal_available run scoreboard players operation @s incoming_heal = @s heal_available

# Applica la guarigione (ora è sicura)
scoreboard players operation @s stat.current_health += @s incoming_heal

# Accumula cure ricevute
scoreboard players operation @s poststat.heal_received += @s incoming_heal

# Feedback
$execute if score @s incoming_heal matches 1.. run \
    tellraw @s [ \
    {"atlas":"minecraft:gui","sprite":"mob_effect/health_boost"},\
    {"text":" > ","color":"dark_gray","bold":false},\
    {"text":"+","color":"green","bold":false},\
    {"score":{objective:"incoming_heal","name":"@s"},"color":"dark_green","bold":false},\
    {"text":" da ","color":"gray","bold":false},\
    {"text":"$(name) ","color":"white","bold":false},\
    {"text":" di ","color":"gray","bold":false},\
    {"text":"$(playerName)","color":"aqua","bold":false},\
    {"text":"!","color":"gray","bold":false},\
    ]

# Feedback in-game text_display
# Feedback in-game text_display
execute store result storage arenaproject:game_memory healFeedback.text int 1.0 run scoreboard players get @s incoming_heal
execute at @s run function health:texts/heal with storage arenaproject:game_memory healFeedback

# Aggiornamento sidebar
function match:display/update

# Aggiornamento actionbar
function health:auxiliary/actionbar

# Reset
scoreboard players reset @s incoming_heal