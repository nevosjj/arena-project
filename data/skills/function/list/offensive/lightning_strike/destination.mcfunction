# Reset score
scoreboard players reset @s temp

# Impostazione data suono
data modify entity @s data.soundName set value "minecraft:entity.breeze.land"
data modify entity @s data.soundPitch set value "0.6"
scoreboard players set @s sound 35

# Impostazione particle e distance
data modify entity @s data.distance set from entity @s data.range
data modify entity @s data.particles set value "minecraft:large_smoke"

# Calcola rotazione
execute store result score @s temp2 run data get entity @s data.charge
scoreboard players set @s temp3 360
execute store result entity @s data.rotation int 1.0 run scoreboard players operation @s temp3 /= @s temp2

# Sistema coordinata
execute align y positioned ~ ~0.6 ~ run tp @s ~ ~ ~ 0 0

# Distribuzione tag
tag @s add lightning_strike.loading