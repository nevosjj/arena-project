# Feedback particellare
particle block{block_state:"minecraft:packed_ice"} ~ ~1 ~ 0.2 0.6 0.2 0.1 45 force

# Feedback sonoro
playsound entity.player.attack.crit player @a ~ ~ ~ 2 0

# Applicazione lentezza
tag @s add freeze_breath.slowed
$attribute @s minecraft:movement_speed modifier add freeze_breath:slow -0.$(slow) add_multiplied_base
$scoreboard players set @s freeze_breath.counter $(duration)

# Aggiunta tag
$tag @s add freeze_breath_$(ID).victim