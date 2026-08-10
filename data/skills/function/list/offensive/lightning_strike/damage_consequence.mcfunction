# Feedback particellare
playsound entity.player.attack.strong player @a ~ ~ ~ 2 1.2
particle instant_effect{color:[1.0,0.0,0.0],power:1.0} ~ ~1 ~ 0 0 0 0.1 10 force

# Applicazione lentezza
tag @s add lightning_strike.immobilized
attribute @s minecraft:movement_speed modifier add lightning_strike:slow -100 add_multiplied_base
attribute @s minecraft:jump_strength modifier add lightning_strike:jump -100 add_multiplied_base
$scoreboard players set @s lightning_strike.counter $(duration)