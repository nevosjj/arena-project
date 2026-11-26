##############################################################
## Chiamata da skills:list/support/bone_shield/apply_on_hit ##
## Esecutore: il caster (vivo)                              ##
## Macro: storage game_memory bone_shield.id<ID>            ##
## (heal, name, playerName; scritto da bone_shield/setup)   ##
## Cura = heal, a ogni teschio consumato                    ##
##############################################################

# Cura fissa per teschio
$scoreboard players set @s incoming_heal $(heal)

# Applica
$function health:math/incoming_heal {name:"$(name)",playerName:"$(playerName)"}
