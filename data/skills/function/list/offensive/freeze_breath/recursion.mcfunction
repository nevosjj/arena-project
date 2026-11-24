##########################################################################
## Chiamata da skills:list/offensive/freeze_breath/setup e da sé stessa ##
## Esecutore e posizione: il marker | Rotazione: il caster              ##
## Storage: arenaproject:game_memory tempFreezingBreath                 ##
## Formula chiusa al passo k (provider skills:freeze_breath/*):         ##
##   angolo = startAngle + twist * (k - 1)                              ##
##   x = growth * k * cos(angolo) | y = growth * k * sin(angolo)        ##
##   range = rangeGrowth * k                                            ##
##########################################################################

# Passo attuale
data modify storage arenaproject:game_memory tempFreezingBreath.k set compute default integer skills:freeze_breath/next_k

# Posizione locale della particella e raggio del danno
data modify storage arenaproject:game_memory tempFreezingBreath.x set compute default float skills:freeze_breath/x
data modify storage arenaproject:game_memory tempFreezingBreath.y set compute default float skills:freeze_breath/y
data modify storage arenaproject:game_memory tempFreezingBreath.range set compute default float skills:freeze_breath/range

# Particelle, blocco, danno e avanzamento lungo la visuale
function skills:list/offensive/freeze_breath/step with storage arenaproject:game_memory tempFreezingBreath

# Caso base: k >= steps
execute if predicate skills:freeze_breath/finished run return run data remove storage arenaproject:game_memory tempFreezingBreath

# Ricorsione
execute at @s run function skills:list/offensive/freeze_breath/recursion
