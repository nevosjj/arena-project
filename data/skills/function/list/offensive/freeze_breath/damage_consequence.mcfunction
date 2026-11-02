# Feedback particellare
particle block{block_state:"minecraft:packed_ice"} ~ ~1 ~ 0.2 0.6 0.2 0.1 45 force

# Feedback sonoro
playsound entity.player.attack.crit player @a ~ ~ ~ 2 0

# Applicazione lentezza (solo giocatori)
tag @s[type=player] add freeze_breath.slowed
$execute if entity @s[type=player] run attribute @s minecraft:movement_speed modifier add freeze_breath:slow -0.$(slow) add_multiplied_base
$execute if entity @s[type=player] run scoreboard players set @s freeze_breath.counter $(duration)

# Aggiunta tag (anche alle evocazioni, per non colpirle più volte)
$tag @s add freeze_breath_$(ID).victim
