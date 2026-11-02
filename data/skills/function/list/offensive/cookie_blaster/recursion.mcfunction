###########################################################################
## Chiamata da skills:list/offensive/cookie_blaster/spawn e da sé stessa ##
## Esecutore: il marker dell'abilità | Score temp = proiettili rimasti   ##
## Evoca un proiettile per ciclo.                                        ##
###########################################################################

# Caso base
execute if score @s temp matches ..0 run return fail

# proiettile
summon item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Tags:["projectile","cookie.projectile","new.projectile"],Item:{id:"minecraft:cookie",count:1}}

# --i
scoreboard players remove @s temp 1

# Ricorsione
function skills:list/offensive/cookie_blaster/recursion
