#######################################################
## Chiamata da root:ticks/skills                     ##
## Esecutore: l'evocazione | Macro: i suoi data      ##
## Posizione: il centro del dispenser (hitbox + 0.3) ##
#######################################################

# Fine durata
execute if score @s duration.support matches ..0 run return run function skills:list/support/regen_dispenser/end
scoreboard players remove @s duration.support 1

# Oscillazione (giù a 20, su a 40, ciclo di 40 tick)
scoreboard players add @s counter.support2 1
execute if score @s counter.support2 matches 20 run function skills:list/support/regen_dispenser/bob {y:-0.45f,blade:-0.535f}
execute if score @s counter.support2 matches 40.. run function skills:list/support/regen_dispenser/bob {y:-0.15f,blade:-0.235f}
execute if score @s counter.support2 matches 40.. run scoreboard players set @s counter.support2 0

# Mira continua: il visual guarda l'alleato più vicino entro range
# (l'evocazione si marca con un tag per confrontare la squadra, niente fakeplayer)
tag @s add regen_dispenser.self
$execute as @a[tag=in_game,gamemode=!spectator,distance=..$(range)] if score @s teamID = @e[type=interaction,tag=regen_dispenser.self,distance=..1,limit=1] teamID run tag @s add regen_dispenser.aim
tag @s remove regen_dispenser.self
# Il dispenser (facing:north) va ruotato con yaw +180 e pitch invertito rispetto alla mira:
# è esattamente la direzione inversa, dal busto del bersaglio (piedi + 1) verso il dispenser.
# Mirare al busto (stessa altezza del dispenser) evita inclinazioni enormi da vicino.
execute as @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] \
    at @a[tag=regen_dispenser.aim,sort=nearest,limit=1] positioned ~ ~1 ~ facing entity @s feet run rotate @s ~ ~
tag @a[tag=regen_dispenser.aim] remove regen_dispenser.aim

# Elica: ritmo dato da periodic_tick sul visual
execute as @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] \
    if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"minecraft:periodic_tick":5}} \
    run function skills:list/support/regen_dispenser/propeller

# Sparo: prima scala, a 0 spara (spari a 60, 120, 180 tick; senza bersaglio resta in attesa)
scoreboard players remove @s counter.support 1
execute if score @s counter.support matches ..0 run function skills:list/support/regen_dispenser/shoot with entity @s data
