scoreboard players set #test temp3 2

# P1.X = (P0.X + P2.X) / 2

execute store result score #test temp run data get storage test:curva p0.x 1000
execute store result score #test temp2 run data get storage test:curva p2.x 1000

scoreboard players operation #test temp += #test temp2
scoreboard players operation #test temp /= #test temp3

execute store result storage test:curva p1.x double 0.001 run scoreboard players get #test temp


# P1.Y = (P0.Y + P2.Y) / 2

execute store result score #test temp run data get storage test:curva p0.y 1000
execute store result score #test temp2 run data get storage test:curva p2.y 1000

scoreboard players operation #test temp += #test temp2
scoreboard players operation #test temp /= #test temp3

execute store result storage test:curva p1.y double 0.001 run scoreboard players get #test temp


# P1.Z = (P0.Z + P2.Z) / 2

execute store result score #test temp run data get storage test:curva p0.z 1000
execute store result score #test temp2 run data get storage test:curva p2.z 1000

scoreboard players operation #test temp += #test temp2
scoreboard players operation #test temp /= #test temp3

execute store result storage test:curva p1.z double 0.001 run scoreboard players get #test temp