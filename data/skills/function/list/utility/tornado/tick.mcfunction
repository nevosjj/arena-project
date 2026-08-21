## Caso base
execute if score @s duration.utility matches ..0 run return run function skills:list/utility/tornado/reset

# Aggiornamento punteggi
scoreboard players remove @s duration.utility 1
scoreboard players remove @s counter.utility 1
scoreboard players remove @s counter.utility2 1

# Controllo suono
execute if score @s counter.utility2 matches ..0 run function skills:list/utility/tornado/sound with entity @s data

# Controllo danni
execute if score @s counter.utility matches ..0 run function skills:list/utility/tornado/damage with entity @s data

# Rotazione e feedback visivo
function skills:list/utility/tornado/rotation with entity @s data

# Disorientamento proiettili
$execute if entity @e[tag=projectile,distance=..$(range)] as @e[tag=projectile,distance=..$(range)] run data modify entity @s Motion[1] set value 2.5