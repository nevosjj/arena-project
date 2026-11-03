###############################################################
## Chiamata da root:ticks/main                               ##
## Esecutore e posizione: il marker del potenziamento        ##
## Fluttuazione, rotazione, impulso ad anello, suono di      ##
## sottofondo e raccolta (solo vivi, entro 1 blocco).        ##
###############################################################

# Animazione (ciclo di 40 tick)
scoreboard players add @s powerup.anim_timer 1
execute if score @s powerup.anim_timer matches 40.. run scoreboard players set @s powerup.anim_timer 0

# Fluttuazione: su per 20 tick, giù per 20 tick
execute if score @s powerup.anim_timer matches 0 run function match:events/powerup/bob {y:0.75}
execute if score @s powerup.anim_timer matches 20 run function match:events/powerup/bob {y:0.45}

# Rotazione su sé stesso: +10° ogni 2 tick, il client interpola (teleport_duration:2)
execute as @e[type=block_display,tag=powerup.visual,limit=1,sort=nearest] \
    if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"minecraft:periodic_tick":2}} \
    at @s run rotate @s ~10 ~

# Impulso ad anello (ogni secondo)
execute if score @s powerup.anim_timer matches 0 run function match:events/powerup/pulse
execute if score @s powerup.anim_timer matches 20 run function match:events/powerup/pulse

# Suono di sottofondo
execute if score @s powerup.anim_timer matches 0 run playsound block.beacon.ambient ambient @a ~ ~ ~ 1 1.6

# Raccolta
execute as @a[tag=in_game,tag=!round.dead,gamemode=!spectator,distance=..1,sort=nearest,limit=1] run function match:events/powerup/pick with entity @e[type=marker,tag=powerup.active,limit=1,sort=nearest] data
