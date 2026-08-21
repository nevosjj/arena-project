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

# Attributo
$attribute @p[limit=1,tag=flame_sword.setup] minecraft:entity_interaction_range modifier add flame_sword:range $(range) add_value

# Distribuzione tag target particelle
$tag @p[distance=..2,tag=flame_sword.setup] add flame_sword.player$(ID)

# Evocazione marker particelle
$summon marker ~ ~ ~ {Tags:["flame_sword.particle$(ID)","flame_sword.visual"],data:{ID:$(ID)}}

# Pulizia
tag @p[distance=..2,tag=flame_sword.setup] remove flame_sword.setup