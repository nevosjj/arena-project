###########################################################
## Chiamata da skills:list/utility/magnetic_impulse/init ##
## Esecutore: il marker "magnetic_impulse.visual"        ##
## Posizione: caster +0.5                                ##
## Prende il range dal marker abilità e parte con i 5    ##
## cerchi (visual), dal basso verso l'alto.              ##
###########################################################

# Suono
playsound entity.zombie_villager.cure player @a ~ ~ ~ 0.25 1.5
playsound minecraft:block.sculk_sensor.clicking_stop voice @a ~ ~ ~ 2 0.8
playsound minecraft:block.bubble_column.whirlpool_inside voice @s ~ ~ ~ 2 0.7

# Eredità (distanceOrigin è unico di magnetic_impulse)
data modify entity @s data.distanceOrigin set from entity @e[type=marker,distance=..3,limit=1,sort=nearest,tag=magnetic_impulse.marker] data.range

# Contatori: temp = cerchio attuale, range = punto del cerchio (ring), bool = alternanza particelle
scoreboard players set @s temp 0
scoreboard players set @s range 0
scoreboard players reset @s bool

# Primo cerchio a terra (piedi +0.2), orizzontale
tp @s ~ ~-0.3 ~ ~ 0

# Chiamata funzione visual
execute at @s run function skills:list/utility/magnetic_impulse/visual
