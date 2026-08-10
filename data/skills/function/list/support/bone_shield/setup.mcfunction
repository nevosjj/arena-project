# Ottenimento gradi circonferenza
$scoreboard players set @s temp $(count)
scoreboard players set @s temp2 360
scoreboard players operation @s temp2 /= @s temp

# Inserimento score scudo.
$scoreboard players set @p counter.support $(count)

# Inserimento difesa.
$scoreboard players set @p stat.defense $(power)

# Inserimento durata.
$scoreboard players set @p duration.support $(duration)

# Tag macro al giocatore per capire chi possiede lo scudo
function skills:auxiliary/set_owner with entity @s data

# Ottenimento nel data storage del marker
execute store result entity @s data.boneDegrees int 1.0 run scoreboard players get @s temp2
data modify entity @s data.boneDegreesRot set value 0

# Chiamata di evocazione
scoreboard players reset @s temp
function skills:list/support/bone_shield/recursion with entity @s data