##########################################################
## Chiamata da skills:list/utility/end_teleport/end     ##
## Esecutore: il marker "shadow.recursion"              ##
## Macro: speedFactor (calcolato lì), duration          ##
## +speedPower% di velocità per duration tick.          ##
## Se è già attiva riparte (il modificatore si rimette) ##
## Scala in end_teleport/remove (root:ticks/skills)     ##
##########################################################

$scoreboard players set @p[tag=end_teleport.player] end_teleport.counter $(duration)
tag @p[tag=end_teleport.player] add end_teleport.speed
execute as @p[tag=end_teleport.player] run attribute @s movement_speed modifier remove end_teleport:speed
$execute as @p[tag=end_teleport.player] run attribute @s movement_speed modifier add end_teleport:speed $(speedFactor) add_multiplied_base
