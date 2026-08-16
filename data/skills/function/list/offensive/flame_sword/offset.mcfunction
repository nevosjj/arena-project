# P1 = punto medio + offset casuale controllato
# In questo modo la curva ha un arco naturale senza uscire troppo dal segmento A-B

# Offset random su X e Z: da -0,5 a +0,5 blocchi
execute store result storage arenaproject:ability_data temp.offset.x int 1.0 run random value -500..500
execute store result storage arenaproject:ability_data temp.offset.z int 1.0 run random value -500..500

# Offset random su Y: da 0,05 a 0,2 blocchi in alto
# Il valore è piccolo perché, quando i punti sono vicini, anche un arco piccolo diventa enorme.
execute store result storage arenaproject:ability_data temp.offset.y int 1.0 run random value 300..800

# Applica l'offset in centesimi di blocco
execute store result score #flame_sword temp run data get storage arenaproject:ability_data temp.p1.x
execute store result score #flame_sword temp2 run data get storage arenaproject:ability_data temp.offset.x
scoreboard players operation #flame_sword temp += #flame_sword temp2
execute store result storage arenaproject:ability_data temp.p1.x int 1 run scoreboard players get #flame_sword temp

execute store result score #flame_sword temp run data get storage arenaproject:ability_data temp.p1.y
execute store result score #flame_sword temp2 run data get storage arenaproject:ability_data temp.offset.y
scoreboard players operation #flame_sword temp += #flame_sword temp2
execute store result storage arenaproject:ability_data temp.p1.y int 1 run scoreboard players get #flame_sword temp

execute store result score #flame_sword temp run data get storage arenaproject:ability_data temp.p1.z
execute store result score #flame_sword temp2 run data get storage arenaproject:ability_data temp.offset.z
scoreboard players operation #flame_sword temp += #flame_sword temp2
execute store result storage arenaproject:ability_data temp.p1.z int 1 run scoreboard players get #flame_sword temp

# Pulizia finale: il reset va fatto fuori da qui, in reset_data.mcfunction
data remove storage arenaproject:ability_data temp.offset