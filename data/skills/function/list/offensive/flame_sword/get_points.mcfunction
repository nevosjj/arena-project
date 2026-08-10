# ============================================================
# CURVA - START
# ============================================================

# P0 = attaccante
execute store result storage test:curva p0.x double 1.0 run data get entity @e[tag=p0,limit=1] Pos[0]
execute store result storage test:curva p0.y double 1.0 run data get entity @e[tag=p0,limit=1] Pos[1]
execute store result storage test:curva p0.z double 1.0 run data get entity @e[tag=p0,limit=1] Pos[2]

# P2 = vittima
execute store result storage test:curva p2.x double 1.0 run data get entity @e[tag=p2,limit=1] Pos[0]
execute store result storage test:curva p2.y double 1.0 run data get entity @e[tag=p2,limit=1] Pos[1]
execute store result storage test:curva p2.z double 1.0 run data get entity @e[tag=p2,limit=1] Pos[2]

# P1 = punto medio
function skills:list/offensive/flame_sword/mid

# P1 = punto medio + offset casuale
function skills:list/offensive/flame_sword/offset

# Inizializza la generazione della curva
data modify storage test:curva points set value []

scoreboard players set #test step 0 dummy

function skills:list/offensive/flame_sword/bezier