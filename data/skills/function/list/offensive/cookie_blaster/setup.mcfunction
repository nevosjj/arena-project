# Feedback
playsound entity.armadillo.scute_drop ambient @a ~ ~ ~ 2 0

# Statistiche abilità dal marker
data modify entity @s data set from entity @e[type=marker,distance=..3,tag=cookie_blaster.marker,limit=1,sort=nearest] data

# Aggiunta deviazione
function skills:list/offensive/cookie_blaster/offset with entity @s data

# Sistema movimento (con deviazione)
function skills:list/offensive/cookie_blaster/aim with storage arenaproject:game_memory cookieTemp

# Integrazione punteggio
execute store result score @s teamID run data get entity @s data.teamID

# Pulizia
data remove storage arenaproject:game_memory cookieTemp

# Rimozione tag
tag @s remove new.projectile

# Assegnazione tag ricerca
tag @s add cookie_blaster.finder

# Pronto
tag @s add ready