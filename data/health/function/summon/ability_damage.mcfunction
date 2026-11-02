###############################################################################
## Chiamata da skills:auxiliary/targeting/apply_damage                       ##
## Esecutore: la hitbox colpita                                              ##
## Come health:types/ability_damage, senza notifica "!!!" né damage vanilla. ##
## La morte la controlla apply_damage DOPO la damage_consequence.            ##
###############################################################################

scoreboard players operation @s incoming_damage += @s ability_damage
function health:summon/incoming_damage
