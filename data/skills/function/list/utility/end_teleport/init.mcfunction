################################################
## Chiamata da skills:activations/flow/marker ##
## Esecutore: il caster                       ##
################################################

# Feedback d'origine
function skills:list/utility/end_teleport/visual

# Marker del raycast (all'altezza del busto)
summon marker ~ ~1 ~ {Tags:["shadow.recursion"]}

# Setup (con la rotazione del caster)
execute rotated as @s as @e[type=marker,distance=..4,tag=shadow.recursion] positioned as @s run function skills:list/utility/end_teleport/setup

# Raycast e teletrasporto
execute as @e[type=marker,tag=shadow.recursion,distance=..2,limit=1,sort=nearest] at @s run function skills:list/utility/end_teleport/cast

# Feedback della fine
function skills:list/utility/end_teleport/visual_end

# Uccisione marker abilità
kill @e[type=marker,distance=..2,sort=nearest,limit=1,tag=end_teleport.marker]
