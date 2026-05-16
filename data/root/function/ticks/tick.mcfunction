## MINECART (Selezione oggetti)
execute as @a[tag=in_game] run function root:ticks/minecart

# Controllo antispam
execute as @a[tag=in_game] run function root:ticks/antispam

# Controllo esperienza
execute as @a[tag=energy.activated] run function experience:tick

# Eseguibile ogni 20 tick
execute if score #match bool matches 1 as @a[tag=in_game] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":20}} run function root:ticks/1second

# Controllo condizioni matchmaking
# 1v1
execute as @e[type=interaction,tag=matchmaking.1v1] if data entity @s interaction run function matchmaking:1v1/interaction
execute as @e[type=interaction,tag=matchmaking.1v1] if data entity @s attack run function matchmaking:1v1/attack
execute as @e[type=interaction,tag=matchmaking.1v1] if score @s counter matches 2.. run function matchmaking:1v1/stopwatch

# Controllo text_display danno
execute if entity @e[type=text_display,tag=text.damage] as @e[type=text_display,tag=text.damage] at @s run function health:text_damage

## Skills
# Coordinate 90 -30 0, distanza 128.
execute positioned 90 -30 0 run function root:ticks/skills