##############################
## Funzione tick principale ##
##############################

## MINECART (Selezione oggetti)
execute as @a[tag=in_game] run function root:ticks/minecart

# Controllo antispam
execute if entity @a[tag=in_game] as @a[tag=in_game] as @s run function root:ticks/antispam

# Controllo stopwatches
function root:ticks/stopwatches

# Controllo esperienza
execute as @a[tag=energy.activated] run function experience:tick

# Controllo danno recente
execute if entity @e[tag=in_game,scores={recent_damage=1..}] as @a[tag=in_game,scores={recent_damage=1..}] run function health:auxiliary/recent_damage

# Eseguibile ogni 20 tick
execute if score #match bool matches 1 as @a[tag=in_game,limit=1] if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"minecraft:periodic_tick":20}} run function root:ticks/1second

# Controllo condizioni matchmaking
# 1v1
execute as @e[type=interaction,tag=matchmaking.1v1] if data entity @s interaction run function matchmaking:1v1/interaction
execute as @e[type=interaction,tag=matchmaking.1v1] if data entity @s attack run function matchmaking:1v1/attack
execute as @e[type=interaction,tag=matchmaking.1v1] if score @s counter matches 2.. run function matchmaking:1v1/stopwatch

# Controllo text_display danno
execute if entity @e[type=text_display,tag=feedback_text] as @e[type=text_display,tag=feedback_text] at @s run function health:texts/tick

## Registro partite (dialog): i pulsanti usano /trigger recording.nav
scoreboard players enable @a recording.nav
execute as @a[scores={recording.nav=1..}] run function recording:dialog/nav

## Skills
# Coordinate 90 -30 0, distanza 128.
execute positioned 90 -30 0 run function root:ticks/skills

## Potenziamenti
# Anteprima (vortice prima della comparsa)
execute if entity @e[type=marker,tag=powerup.incoming] as @e[type=marker,tag=powerup.incoming] at @s run function match:events/powerup/logic/preview_tick
# In campo (fluttuazione, impulso, scadenza, raccolta)
execute if entity @e[type=marker,tag=powerup.active] as @e[type=marker,tag=powerup.active] at @s run function match:events/powerup/logic/tick
# Berserk: durata e anelli
execute if entity @a[tag=powerup.berserk] as @a[tag=powerup.berserk] run function match:events/powerup/types/berserk/tick
execute if entity @e[type=marker,tag=powerup.berserk_visual] as @e[type=marker,tag=powerup.berserk_visual] at @s run function match:events/powerup/types/berserk/rings with entity @s data

## Animazioni
# Morte
execute if entity @e[type=mannequin,tag=death_mannequin,tag=death_mannequin.tick] as @e[type=mannequin,tag=death_mannequin,tag=death_mannequin.tick] at @s run function animation:deaths/general/tick with entity @s data

## Rigenerazione (stat.regeneration_pool): un impulso ogni 10 tick
execute if entity @a[tag=in_game,scores={stat.regeneration_pool=1..}] as @a[tag=in_game,scores={stat.regeneration_pool=1..}] if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"minecraft:periodic_tick":10}} run function health:regeneration/heal
