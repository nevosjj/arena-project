###################################################################
## Chiamata da skills:list/offensive/flame_sword/apply_damage    ##
## Esecutore: l'attaccante                                       ##
## Riempie storage arenaproject:game_memory bezier per la curva  ##
## generica skills:math/bezier2/* (context_float_provider).      ##
###################################################################

# P0 = vittima
data modify storage arenaproject:game_memory bezier.p0.x set from entity @a[tag=flame_sword.p0,limit=1] Pos[0]
data modify storage arenaproject:game_memory bezier.p0.y set from entity @a[tag=flame_sword.p0,limit=1] Pos[1]
data modify storage arenaproject:game_memory bezier.p0.z set from entity @a[tag=flame_sword.p0,limit=1] Pos[2]

# P2 = attaccante
data modify storage arenaproject:game_memory bezier.p2.x set from entity @a[tag=flame_sword.p2,limit=1] Pos[0]
data modify storage arenaproject:game_memory bezier.p2.y set from entity @a[tag=flame_sword.p2,limit=1] Pos[1]
data modify storage arenaproject:game_memory bezier.p2.z set from entity @a[tag=flame_sword.p2,limit=1] Pos[2]

# P1 = punto medio + offset casuale (±5 blocchi su X/Z, da 3 a 8 blocchi in alto su Y)
data modify storage arenaproject:game_memory bezier.p1.x set compute default float skills:flame_sword/p1_x
data modify storage arenaproject:game_memory bezier.p1.y set compute default float skills:flame_sword/p1_y
data modify storage arenaproject:game_memory bezier.p1.z set compute default float skills:flame_sword/p1_z

# Parametri curva: t = tStart + i * tStep, per i da 0 a points-1 (t da 0.04 a 0.99)
data modify storage arenaproject:game_memory bezier merge value {i:0,points:20,tStart:0.04f,tStep:0.05f}

# Inizio ricorsione
function skills:list/offensive/flame_sword/recursion
