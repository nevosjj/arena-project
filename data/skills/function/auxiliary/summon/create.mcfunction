###########################################################################################################
## Chiamata dalle abilità con evocazioni (es. skills:list/support/regen_dispenser/init)                  ##
## Uso: function skills:auxiliary/summon/create with entity @s data                                      ##
## Esecutore: il marker dell'abilità (data: abilityName, abilityType, ID, teamID, width, height, health) ##
## Posizione: i piedi della hitbox                                                                       ##
## Crea l'evocazione: una interaction "player_summon" autonoma, con i data dell'abilità.                 ##
## Resta col tag "summon.new": il setup dell'abilità la prende in carico e lo toglie.                    ##
###########################################################################################################

# Hitbox
$summon interaction ~ ~ ~ {width:$(width)f,height:$(height)f,response:1b,Tags:["player_summon","summon.part","summon.new"]}

# Dati dell'abilità
data modify entity @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] data set from entity @s data

# Statistiche
$scoreboard players set @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] summon.health $(health)
scoreboard players set @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] summon.iframes 0
scoreboard players operation @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] ID = @s ID
scoreboard players operation @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] teamID = @s teamID

# Indicatore HP: text_display piccolo, passeggero della hitbox (resta sopra anche se si muove o cambia dimensione)
summon text_display ~ ~ ~ {Tags:["summon.part","summon.health_display","summon.health_new"],billboard:"center",shadow:1b,background:0,see_through:0b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.5f,0.5f,0.5f]},text:""}
ride @e[type=text_display,tag=summon.health_new,distance=..0.1,limit=1] mount @e[type=interaction,tag=summon.new,distance=..0.1,limit=1]
tag @e[type=text_display,tag=summon.health_new] remove summon.health_new
execute as @e[type=interaction,tag=summon.new,distance=..0.1,limit=1] run function skills:auxiliary/summon/health_display
