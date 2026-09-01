##################
## Chiamata da health:math/incoming_damage
## Aggiornamento informazioni del display giocatore usando gli storage.
##################

# Impostazione vita
scoreboard players operation @s game_display = @s stat.current_health

# Clear temporaneo
execute as @s run scoreboard players display numberformat @s game_display

# Aggiorna
scoreboard players display name @s game_display [{"selector":"@s","bold":false,"color":"#b4dadd"}," ",\
    {"score":{name:"@s","objective":"game_display"},"color":"green","bold":false},"",\
    {"atlas":"minecraft:gui","sprite":"mob_effect/regeneration","bold":false}]

# Reimmissione
execute as @s run scoreboard players display numberformat @s game_display blank