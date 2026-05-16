# Reset dati fantasma
scoreboard players reset @s temp
scoreboard players reset @s sound
scoreboard players reset @s temp2
scoreboard players reset @s temp3

# Ricerca danni
function skills:auxiliary/search_damage with entity @s data
execute positioned ~ ~0.7 ~ run function skills:auxiliary/ability_range with entity @s data

# Feedback
particle firework ~ ~0.1 ~ 0 0 0 0.15 30 force
particle flash{color:[1.000,1.000,0.231,1.00]} ~ ~0.1 ~ 0 0 0 0 1 force
playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1.4
playsound entity.firework_rocket.twinkle_far hostile @a ~ ~ ~ 2 1.4

# Reset
kill @s