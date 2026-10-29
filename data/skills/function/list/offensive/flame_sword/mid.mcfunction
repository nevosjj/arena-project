scoreboard players set #flame_sword temp3 2

# temp.p1.X = (P0.X + temp.p2.X) / 2
# Le coordinate sono in centesimi di blocco, quindi qui l'unità è 1/100 block
execute store result score #flame_sword temp run data get storage arenaproject:game_memory bezierTemp.p0.x
execute store result score #flame_sword temp2 run data get storage arenaproject:game_memory bezierTemp.p2.x

scoreboard players operation #flame_sword temp += #flame_sword temp2
scoreboard players operation #flame_sword temp /= #flame_sword temp3

execute store result storage arenaproject:game_memory bezierTemp.p1.x int 1 run scoreboard players get #flame_sword temp

# temp.p1.Y = (P0.Y + temp.p2.Y) / 2
execute store result score #flame_sword temp run data get storage arenaproject:game_memory bezierTemp.p0.y
execute store result score #flame_sword temp2 run data get storage arenaproject:game_memory bezierTemp.p2.y

scoreboard players operation #flame_sword temp += #flame_sword temp2
scoreboard players operation #flame_sword temp /= #flame_sword temp3

execute store result storage arenaproject:game_memory bezierTemp.p1.y int 1 run scoreboard players get #flame_sword temp

# temp.p1.Z = (P0.Z + temp.p2.Z) / 2
execute store result score #flame_sword temp run data get storage arenaproject:game_memory bezierTemp.p0.z
execute store result score #flame_sword temp2 run data get storage arenaproject:game_memory bezierTemp.p2.z

scoreboard players operation #flame_sword temp += #flame_sword temp2
scoreboard players operation #flame_sword temp /= #flame_sword temp3

execute store result storage arenaproject:game_memory bezierTemp.p1.z int 1 run scoreboard players get #flame_sword temp