#############################################################
## Chiamata da skills:list/support/bone_shield/end         ##
## Esecutore: il caster (vivo)                             ##
## Macro: storage game_memory bone_shield.id<ID>           ##
## (heal, name, playerName; scritto da bone_shield/setup)  ##
## Cura = heal * teschi rimasti (counter.support)          ##
#############################################################

# Cura = counter.support * heal
$execute store result score @s incoming_heal run compute entity @s integer {type:"minecraft:mul",inputs:[{type:"minecraft:score",score:"counter.support",target:{type:"context",target:"this"},fallback:0},$(heal)]}

# Applica (nessun teschio rimasto: niente cura né feedback)
$execute if score @s incoming_heal matches 1.. run return run function health:math/incoming_heal {name:"$(name)",playerName:"$(playerName)"}
scoreboard players reset @s incoming_heal
