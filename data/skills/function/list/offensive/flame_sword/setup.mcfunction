# Estrazione
execute store result score @s temp run data get entity @s data.duration
execute store result score @s temp2 run data get entity @s data.hit

# Durata abilità
$scoreboard players set @p[distance=..2,tag=flame_sword.setup] duration.offensive2 $(duration)
$scoreboard players set @p[distance=..2,tag=flame_sword.setup] duration.offensive $(duration)
# Colpi massimi per il reset
$scoreboard players set @p[distance=..2,tag=flame_sword.setup] counter.offensive $(hit)
# Colpi massimi dati
$scoreboard players set @p[distance=..2,tag=flame_sword.setup] counter.offensive2 $(max_hit)

# Portata extra: spada con attack_range = 3 (base) + range
$data modify storage arenaproject:game_memory sword.reach set compute default float {type:"minecraft:add",inputs:[3,$(range)]}
execute as @p[limit=1,tag=flame_sword.setup] run function skills:auxiliary/sword/give with storage arenaproject:game_memory sword
data remove storage arenaproject:game_memory sword

# Pulizia
tag @p[distance=..2,tag=flame_sword.setup] remove flame_sword.setup