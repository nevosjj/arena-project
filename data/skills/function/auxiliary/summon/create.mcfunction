######################################################################################
## Chiamata dalle abilità con evocazioni (es. skills:list/debug/summon_dummy/setup) ##
## Esecutore: il cervello (marker con data abilityName, abilityType, ID, teamID)    ##
## Posizione: i piedi della hitbox                                                  ##
## Uso: function skills:auxiliary/summon/create {width, height, health}             ##
## Crea la hitbox "player_summon" e la collega al cervello tramite summon.ID.       ##
## Alla morte: skills:list/<abilityType>/<abilityName>/destroyed come il cervello.  ##
######################################################################################

# Nuovo identificativo
scoreboard players add #summon_counter summon.ID 1
scoreboard players operation @s summon.ID = #summon_counter summon.ID
tag @s add summon.brain
tag @s add summon.part

# Hitbox
$summon interaction ~ ~ ~ {width:$(width)f,height:$(height)f,response:1b,Tags:["player_summon","summon.part","summon.new"]}

# Statistiche
$scoreboard players set @e[type=interaction,tag=summon.new,distance=..1] summon.health $(health)
scoreboard players set @e[type=interaction,tag=summon.new,distance=..1] summon.iframes 0
scoreboard players operation @e[type=interaction,tag=summon.new,distance=..1] summon.ID = @s summon.ID
scoreboard players operation @e[type=interaction,tag=summon.new,distance=..1] ID = @s ID
scoreboard players operation @e[type=interaction,tag=summon.new,distance=..1] teamID = @s teamID

# Pulizia
tag @e[type=interaction,tag=summon.new,distance=..1] remove summon.new
