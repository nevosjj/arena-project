# Durata
execute store result score @s duration.utility run data get entity @s data.duration
execute store result score @s counter.utility run data get entity @s data.interval
scoreboard players set @s counter.utility2 10

# Calcolo rotazione
scoreboard players set @s temp 360
scoreboard players set @s temp2 5
execute store result score @s temp3 run data get entity @s data.range
scoreboard players operation @s temp3 *= @s temp2
execute store result entity @s data.rotation int 1.0 run scoreboard players operation @s temp /= @s temp3

# Distribuzione tag danno
tag @s add tornado.finder

# Feedback audio
playsound entity.guardian.hurt hostile @a ~ ~ ~ 2 0

# Setup grafica abilità
execute store result entity @s data.ring1 float 0.12 run data get entity @s data.range
execute store result entity @s data.ring2 float 0.23 run data get entity @s data.range
execute store result entity @s data.ring3 float 0.34 run data get entity @s data.range
execute store result entity @s data.ring4 float 0.38 run data get entity @s data.range
execute store result entity @s data.ring5 float 0.42 run data get entity @s data.range

# Ottenimento ID da sé stesso
execute store result score @s ID run data get entity @s data.ID

# Ottenimento teamID da sé stesso
execute store result score @s teamID run data get entity @s data.teamID