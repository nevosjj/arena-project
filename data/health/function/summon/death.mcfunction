###################################################################################
## Chiamata da health:summon/melee_hit e skills:auxiliary/targeting/apply_damage ##
## Esecutore: la hitbox distrutta                                                ##
## Chiama la destroyed dell'abilità come e al cervello, poi elimina la hitbox.   ##
## Cervello e visual sono a carico della destroyed.                              ##
###################################################################################

# Cervello
scoreboard players operation #summon summon.ID = @s summon.ID
execute at @s as @e[type=marker,tag=summon.brain,distance=..16] if score @s summon.ID = #summon summon.ID at @s run function health:summon/destroyed with entity @s data
scoreboard players reset #summon summon.ID

# Hitbox
function skills:auxiliary/summon/kill
