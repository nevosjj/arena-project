# Aggiunta di esperienza dopo l'attacco
experience add @s[tag=!flame_sword.energy] 2 levels
execute store result score @s experience_level run experience query @s levels
stopsound @a * entity.player.levelup