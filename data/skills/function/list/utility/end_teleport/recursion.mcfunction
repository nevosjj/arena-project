##############################################################################
## Chiamata da skills:list/utility/end_teleport/init e da sé stessa         ##
## Esecutore e posizione: il marker "shadow.recursion" | Macro: i suoi data ##
## Avanza di un blocco per ciclo finché trova un muro o raggiunge il range. ##
##############################################################################

scoreboard players add @s temp 1
particle smoke ~ ~ ~ 0 0.8 0 0 10 force
tp @s ^ ^ ^1

execute unless blocks ^ ^ ^0.1 ^ ^1 ^3 ~ ~ ~ all run function skills:list/utility/end_teleport/end
$execute if score @s temp matches ..$(range) at @s run function skills:list/utility/end_teleport/recursion with entity @s data
$execute if score @s temp matches $(range).. positioned ~ ~0.5 ~ run function skills:list/utility/end_teleport/end
