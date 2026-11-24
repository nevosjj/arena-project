#####################################################################
## Chiamata da skills:list/utility/end_teleport/cast               ##
## Esecutore e posizione: il marker "shadow.recursion" all'arrivo  ##
## Teletrasporta il giocatore con i piedi 1 blocco sotto il marker ##
## (hitbox già verificata dallo step), mantenendo il suo sguardo,  ##
## poi gli dà la velocità (speedPower%, duration tick).            ##
#####################################################################

execute positioned ~ ~-1 ~ run tp @p[tag=end_teleport.player] ~ ~ ~

# Velocità (speedPower in percentuale -> moltiplicatore)
execute store result entity @s data.speedFactor float 0.01 run data get entity @s data.speedPower
function skills:list/utility/end_teleport/speed with entity @s data

tag @a[tag=end_teleport.player] remove end_teleport.player
kill @s
