# Statistiche abilità dal marker
data modify entity @s data set from entity @e[type=marker,distance=..5,tag=end_teleport.marker,limit=1,sort=nearest] data

# Rotazione: la stessa dello sguardo del caster (ereditata dalla chiamata)
tp @s ~ ~ ~ ~ ~

# Ottenimento ID da sé stesso
execute store result score @s ID run data get entity @s data.ID

# Assegnazione tag al giocatore (per ora più vicino, metodo un po' fragile lo ammetto)
tag @p[distance=..2] add end_teleport.player