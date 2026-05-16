# Statistiche abilità dal marker
data modify entity @s data set from entity @e[type=marker,distance=..5,tag=lightning_strike.marker,limit=1,sort=nearest] data

# Tag per identificare giocatori a cui arrecare danni
tag @s add lightning_strike.finder

# Sistema rotazione
execute facing entity @e[type=marker,distance=..12,tag=lightning_strike.objective,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

# Ottenimento ID da sé stesso
execute store result score @s teamID run data get entity @s data.teamID