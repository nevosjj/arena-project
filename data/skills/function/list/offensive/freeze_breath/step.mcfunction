##############################################################################
## Chiamata da skills:list/offensive/freeze_breath/recursion                ##
## Esecutore e posizione: il marker | Rotazione: il caster                  ##
## Macro: storage arenaproject:game_memory tempFreezingBreath (x, y, range) ##
## Volutamente minuscola: viene ricompilata a ogni passo.                   ##
##############################################################################

$execute unless entity @s[tag=breath.blocked] run particle snowflake ^$(x) ^$(y) ^ 0 0 0 0 1 force
$particle minecraft:dust_color_transition{from_color:[0.15,0.1,0.45],to_color:[0.85,0.7,1.0],scale:1.1} ^$(x) ^$(y) ^ 0 0 0 0 1 force
execute unless entity @s[tag=breath.blocked] unless block ~ ~ ~ air run function skills:list/offensive/freeze_breath/block_reduction
$execute as @e[tag=target.selected,distance=..$(range)] run function skills:list/offensive/freeze_breath/hit
