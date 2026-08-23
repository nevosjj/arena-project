## MINECART (Selezione oggetti)
execute as @a[tag=in_game] run function root:ticks/minecart

# Controllo antispam
execute if entity @a[tag=in_game] as @a[tag=in_game] as @s run function root:ticks/antispam

# Controllo stopwatches
function root:ticks/stopwatches

# Controllo esperienza
execute as @a[tag=energy.activated] run function experience:tick

# Controllo danno recente
execute if entity @e[tag=in_game,scores={recent_damage=1..}] as @a[tag=in_game,scores={recent_damage=1..}] run function health:recent_damage

# Eseguibile ogni 20 tick
execute if score #match bool matches 1 as @a[tag=in_game,limit=1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":20}} run function root:ticks/1second

## NAVIGAZIONE PARTITE
# Controllo che i giocatori tengano in mano la testa di una partita per controllarne le statistiche
execute as @a if items entity @s player.cursor player_head[custom_data~{headdata:1b}] run function recording:check/select
# Torna indietro alla lista partite
execute as @a if items entity @s player.cursor barrier[custom_data~{matchlist_back:1b}] run function recording:check/reset
# Statistiche
execute as @a if items entity @s player.cursor player_head[custom_data~{headstats:1b}] run function recording:check/stats
execute as @a if items entity @s player.cursor player_head[custom_data~{headequips:1b}] run function recording:check/equips
execute as @a if items entity @s player.cursor barrier[custom_data~{infolist_back:1b}] run function recording:check/select

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

## Animazioni
# Morte
execute if entity @e[type=mannequin,tag=death_mannequin] as @e[type=mannequin,tag=death_mannequin] at @s run function animation:deaths/general/tick with entity @s data