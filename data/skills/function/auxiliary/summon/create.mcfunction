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
