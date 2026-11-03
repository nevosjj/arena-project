##########################################################################
## Chiamata da health:math/incoming_damage || incoming_heal             ##
## health:deaths/health, match:events/new_round || start || poison      ##
## Aggiornamento informazioni del display giocatore usando gli storage. ##
## Se il giocatore è morto mostra "MORTO" al posto della vita.          ##
##########################################################################

# Impostazione vita
scoreboard players operation @s game_display = @s stat.current_health

# Giocatore morto
# round.dead copre anche la morte da void (dove la vita non arriva a 0)
execute if entity @s[tag=round.dead] run return run function match:display/dead
execute if score @s stat.current_health matches ..0 run return run function match:display/dead

# Clear temporaneo
execute as @s run scoreboard players display numberformat @s game_display

# Aggiorna
scoreboard players display name @s game_display [{"selector":"@s","bold":false,"color":"#b4dadd"}," ",\
    {"score":{name:"@s","objective":"game_display"},"color":"green","bold":false},"",\
    {"atlas":"minecraft:gui","sprite":"mob_effect/regeneration","bold":false}]

# Reimmissione
execute as @s run scoreboard players display numberformat @s game_display blank