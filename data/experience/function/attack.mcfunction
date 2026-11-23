# Statistiche post-partita (prima dell'aumento, stessa quantità della riga sotto)
scoreboard players set #xp.gain temp 2
execute if entity @s[tag=!flame_sword.energy] run function experience:stats {objective:"melee_xp_generated"}
scoreboard players reset #xp.gain temp

# Aggiunta di esperienza dopo l'attacco
experience add @s[tag=!flame_sword.energy] 2 levels
execute store result score @s experience_level run experience query @s levels
stopsound @a * entity.player.levelup
