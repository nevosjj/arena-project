# Estrazione
execute store result score @s temp run data get entity @s data.duration
execute store result score @s temp2 run data get entity @s data.hit

# Inserimento
$scoreboard players set @p[distance=..2,tag=flame_sword.score] duration.offensive2 $(duration)
$scoreboard players set @p[distance=..2,tag=flame_sword.score] duration.offensive $(duration)
$scoreboard players set @p[distance=..2,tag=flame_sword.score] counter.offensive $(hit)
# Colpi massimi
$scoreboard players set @p[distance=..2,tag=flame_sword.score] counter.offensive3 $(max_hit)

# Attributo
$attribute @p[limit=1,tag=flame_sword.score] minecraft:entity_interaction_range modifier add flame_sword:range $(range) add_value

# Pulizia
tag @p[distance=..2,tag=flame_sword.score] remove flame_sword.score