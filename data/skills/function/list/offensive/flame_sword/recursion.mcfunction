################################################################################
## Chiamata da skills:list/offensive/flame_sword/get_points e da sé stessa    ##
## Curva di Bézier quadratica ricorsiva: un punto e una particella per ciclo. ##
## B(t) = (1-t)^2 * P0 + 2t(1-t) * P1 + t^2 * P2 (skills:math/bezier2/*)      ##
################################################################################

# Caso base: i >= points
execute if predicate skills:math/bezier2/finished run return run function skills:list/offensive/flame_sword/reset_data

# Calcolo del punto corrente della curva
data modify storage arenaproject:game_memory bezier.pos.x set compute default float skills:math/bezier2/x
data modify storage arenaproject:game_memory bezier.pos.y set compute default float skills:math/bezier2/y
data modify storage arenaproject:game_memory bezier.pos.z set compute default float skills:math/bezier2/z

# Particella nella posizione calcolata
function skills:list/offensive/flame_sword/particle with storage arenaproject:game_memory bezier.pos

# Punto successivo
data modify storage arenaproject:game_memory bezier.i set compute default integer skills:math/bezier2/next_i

function skills:list/offensive/flame_sword/recursion
