# ============================================================
# CURVA - START
# ============================================================

# P0 = attaccante
# Tutti i punti sono salvati in centesimi di blocco: 1.23 => 123
execute store result storage arenaproject:ability_data temp.p0.x int 100 run data get entity @e[type=player,tag=flame_sword.p0,limit=1] Pos[0]
execute store result storage arenaproject:ability_data temp.p0.y int 100 run data get entity @e[type=player,tag=flame_sword.p0,limit=1] Pos[1]
execute store result storage arenaproject:ability_data temp.p0.z int 100 run data get entity @e[type=player,tag=flame_sword.p0,limit=1] Pos[2]

# P2 = vittima
execute store result storage arenaproject:ability_data temp.p2.x int 100 run data get entity @e[type=player,tag=flame_sword.p2,limit=1] Pos[0]
execute store result storage arenaproject:ability_data temp.p2.y int 100 run data get entity @e[type=player,tag=flame_sword.p2,limit=1] Pos[1]
execute store result storage arenaproject:ability_data temp.p2.z int 100 run data get entity @e[type=player,tag=flame_sword.p2,limit=1] Pos[2]

# P1 = punto medio
function skills:list/offensive/flame_sword/mid

# P1 = punto medio + offset casuale piccolo, senza distorcere la curva quando i punti sono vicini
function skills:list/offensive/flame_sword/offset

# Inizializza loop con t in scala intera 0..100, step 5
scoreboard players set #flame_sword iteration 0
scoreboard players set #flame_sword t 4
scoreboard players set #flame_sword max_t 100

# Inizio ricorsione
function skills:list/offensive/flame_sword/recursive