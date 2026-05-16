# Calcola quanto puoi guarire (max_health - current_health)
scoreboard players operation @s heal_available = @s stat.max_health
scoreboard players operation @s heal_available -= @s stat.current_health

# Se la guarigione è più dello spazio disponibile, limita
execute if score @s incoming_heal > @s heal_available run scoreboard players operation @s incoming_heal = @s heal_available

# Applica la guarigione (ora è sicura)
scoreboard players operation @s stat.current_health += @s incoming_heal

# Feedback
$execute if score @s incoming_heal matches 1.. run \
    tellraw @s [ \
    {"atlas":"minecraft:gui","sprite":"mob_effect/health_boost"},\
    {"text":" > ","color":"dark_gray","bold":false},\
    {"text":"+","color":"green","bold":false},\
    {"score":{objective:"incoming_heal","name":"@s"},"color":"dark_green","bold":false},\
    {"text":" da ","color":"dark_aqua","bold":false},\
    {"text":"$(abilityDisplay) ","color":"white","bold":false},\
    {"text":" di ","color":"dark_aqua","bold":false},\
    {"text":"$(playerName)","color":"aqua","bold":false},\
    {"text":"!","color":"dark_aqua","bold":false},\
    ]

# Aggiornamento actionbar
title @s actionbar \
    [{"bold":false,"color":"red","italic":false,"shadow_color":-5636096,"text":"♥ "},\
    {"color":"green","score":{"name":"@s","objective":"stat.current_health"},"shadow_color":-11184811} \
    ," ",{"atlas":"minecraft:items","bold":false,"color":"yellow","italic":false,"sprite":"item/yellow_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.utility_timer"},"shadow_color":-11184811}," ",\
    {"atlas":"minecraft:items","bold":false,"color":"green","italic":false,"sprite":"item/green_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.support_timer"},"shadow_color":-11184811}," ",\
    {"color":"gold","atlas":"minecraft:items","sprite":"item/orange_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.ultimate_timer"},"shadow_color":-11184811}]

# Reset
scoreboard players reset @s incoming_heal