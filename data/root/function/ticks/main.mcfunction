##############################
## Funzione tick principale ##
##############################

## MINECART (Selezione oggetti)
# TP di ogni chest minecart sul suo giocatore (una volta sola, non per giocatore: esistono solo in selezione)
execute as @e[type=block_display,tag=selection_block_display] at @s run function selection:insertion/minecart/teleport with entity @s data
# Solo durante la selezione (tag selecting: match:events/start -> match:events/end_selection)
execute as @a[tag=in_game,tag=selecting] run function root:ticks/minecart
# Un tick extra per chi aveva il minecart aperto a fine selezione: end_selection svuota l'inventario
# e toglie selecting nello stesso tick, così minecart vede 1 -> 0 e uccide minecart e block_display
execute as @a[tag=in_game,tag=!selecting,scores={inventory_prev.selection=1}] run function root:ticks/minecart

# Controllo antispam
execute as @a[tag=in_game] run function root:ticks/antispam

# Controllo stopwatches
function root:ticks/stopwatches

# Controllo esperienza
execute as @a[tag=energy.activated] run function experience:tick

# Controllo danno recente
execute as @a[tag=in_game,scores={recent_damage=1..}] run function health:auxiliary/recent_damage

# Eseguibile ogni 20 tick
execute if score #match bool matches 1 as @a[tag=in_game,limit=1] if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"minecraft:periodic_tick":20}} run function root:ticks/1second

# Matchmaking (code e, in futuro, stanza pre-partita)
function matchmaking:tick

# Controllo text_display danno
execute as @e[type=text_display,tag=feedback_text] at @s run function health:texts/tick

## Registro partite (dialog): i pulsanti usano /trigger recording.nav
scoreboard players enable @a recording.nav
execute as @a[scores={recording.nav=1..}] run function recording:dialog/nav

## Skills
function root:ticks/skills

## Potenziamenti
# Anteprima (vortice prima della comparsa)
execute as @e[type=marker,tag=powerup.incoming] at @s run function match:events/powerup/logic/preview_tick
# In campo (fluttuazione, impulso, scadenza, raccolta)
execute as @e[type=marker,tag=powerup.active] at @s run function match:events/powerup/logic/tick
# Berserk: durata e anelli
execute as @a[tag=powerup.berserk] run function match:events/powerup/types/berserk/tick
execute as @e[type=marker,tag=powerup.berserk_visual] at @s run function match:events/powerup/types/berserk/rings with entity @s data

## Animazioni
# Morte
execute as @e[type=mannequin,tag=death_mannequin,tag=death_mannequin.tick] at @s run function animation:deaths/general/tick with entity @s data

## Anteprima gittata delle abilità con condizione raycast (visibile solo al giocatore)
execute as @a[tag=in_game,tag=!round.dead] at @s run function skills:auxiliary/range_preview/check

## Rigenerazione
execute as @a[tag=in_game,scores={stat.regeneration_pool=1..}] run function health:regeneration/tick
