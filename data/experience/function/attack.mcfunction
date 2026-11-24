# Statistiche post-partita (prima dell'aumento, stessa quantità della riga sotto)
data modify storage arenaproject:game_memory xpStats set value {objective:"melee_xp_generated",gain:2}
execute if entity @s[tag=!flame_sword.energy] run function experience:stats with storage arenaproject:game_memory xpStats
data remove storage arenaproject:game_memory xpStats

# Aggiunta di esperienza dopo l'attacco
experience add @s[tag=!flame_sword.energy] 2 levels
execute store result score @s experience_level run experience query @s levels
stopsound @a * entity.player.levelup
