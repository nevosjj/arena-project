##############################################
## Funzione ausiliaria                      ##
## Identifica che condizione usa l'abilità  ##
## poter potersi attivare                   ##
##############################################

# Tag di target
$tag @s add $(skillTYPE_txt).condition.target_$(ID)

# Crea un marker di controllo
$summon marker ~ ~ ~ {Tags:["$(skillTYPE_txt).marker.check","new_condition_marker"]}

## Raycast
$execute if entity @s[tag=$(skillTYPE_txt).condition.raycast] as @e[type=marker,limit=1,sort=nearest,tag=new_condition_marker] at @s run \
    return run function skills:auxiliary/trigger/raycast

## Area
$execute if entity @s[tag=$(skillTYPE_txt).condition.area] run return run function skills:auxiliary/trigger/area