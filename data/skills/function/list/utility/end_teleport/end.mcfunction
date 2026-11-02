#####################################################################
## Chiamata da skills:list/utility/end_teleport/cast               ##
## Esecutore e posizione: il marker "shadow.recursion" all'arrivo  ##
## Teletrasporta il giocatore con i piedi 1 blocco sotto il marker ##
## (hitbox già verificata dallo step), mantenendo il suo sguardo.  ##
#####################################################################

execute positioned ~ ~-1 ~ run tp @p[tag=end_teleport.player] ~ ~ ~
tag @a[tag=end_teleport.player] remove end_teleport.player
kill @s
