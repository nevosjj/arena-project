# Feedback
playsound entity.armadillo.scute_drop ambient @a ~ ~ ~ 2 0

# Statistiche abilità dal marker
data modify entity @s data set from entity @e[type=marker,distance=..3,tag=cookie_blaster.marker,limit=1,sort=nearest] data

# Aggiunta deviazione
function skills:list/offensive/cookie_blaster/offset with entity @s data

# Sistema movimento
execute facing entity @e[type=marker,tag=cookie.objective,limit=1,sort=nearest] eyes run function skills:auxiliary/set_motion with entity @s data

# Integrazione punteggio
execute store result score @s teamID run data get entity @s data.teamID

# Rimozione tag
tag @s remove new.projectile

# Assegnazione tag ricerca
tag @s add cookie_blaster.finder

# Pronto
tag @s add ready