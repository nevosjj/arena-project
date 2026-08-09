# Ricariche--
execute as @a[tag=in_game,tag=utility_down] run function skills:cooldowns/utility
execute as @a[tag=in_game,tag=support_down] run function skills:cooldowns/support
execute as @a[tag=in_game,tag=ultimate_down] run function skills:cooldowns/ultimate

# Actionbar in-game
execute as @a[tag=in_game] run function health:actionbar

# Durata partita++
execute if score #match bool matches 1 run scoreboard players add #match match.duration 1

# Debug fame, toglierò quando il gioco sarà completo
execute as @a[tag=in_game] if score @s stat.hunger matches ..19 run effect give @s saturation 1 0 true