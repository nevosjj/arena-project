#################################################################################
## Chiamata da health:summon/death_check                                       ##
## Esecutore: la hitbox distrutta                                              ##
## Chiama la destroyed dell'abilità come e al cervello, poi elimina la hitbox. ##
## Cervello e visual sono a carico della destroyed.                            ##
#################################################################################

# Cervello
scoreboard players operation #summon summon.id = @s summon.id
execute as @e[tag=summon.brain] if score @s summon.id = #summon summon.id at @s run function health:summon/destroyed with entity @s data
scoreboard players reset #summon summon.id

# Hitbox
function skills:auxiliary/summon/kill
