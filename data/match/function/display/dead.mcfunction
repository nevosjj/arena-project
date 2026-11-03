#####################################################
## Chiamata da match:display/update                ##
## Sostituisce la vita nella sidebar con "MORTO"   ##
#####################################################

scoreboard players display name @s game_display [{"selector":"@s","bold":false,"color":"#b4dadd"}," ",\
    {"text":"MORTO","color":"dark_red","bold":true}]
