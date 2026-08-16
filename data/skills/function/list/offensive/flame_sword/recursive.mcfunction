# ============================================================
# CURVA - BEZIER QUADRATICA RICORSIVA
# ============================================================

# Case base: t=100 significa fine della curva, senza uscire dal range
execute if score #flame_sword t matches 100.. run return run function skills:list/offensive/flame_sword/reset_data

# Calcolo del punto corrente della curva
function skills:list/offensive/flame_sword/bezier

# Particella nella posizione calcolata
function skills:list/offensive/flame_sword/particle with storage arenaproject:ability_data temp.resultPos

# Avanza t in modo costante e coerente, in scala intera 0..100
scoreboard players add #flame_sword iteration 1
scoreboard players add #flame_sword t 5

function skills:list/offensive/flame_sword/recursive