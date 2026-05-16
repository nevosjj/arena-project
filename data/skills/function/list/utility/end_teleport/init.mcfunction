############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback d'origine
function skills:list/utility/end_teleport/visual


# Marker di riferimento (facing)
summon marker ^ ^1 ^3 {Tags:["shadow.objective"]}
summon marker ~ ~1 ~ {Tags:["shadow.recursion"]} 

# Setup
execute as @e[type=marker,distance=..4,tag=shadow.recursion] at @s run function skills:list/utility/end_teleport/setup

# Inizio ricorsione
execute as @e[type=marker,tag=shadow.recursion,distance=..2,limit=1,sort=nearest] at @s run function skills:list/utility/end_teleport/recursion with entity @s data

# Feedback della fine
function skills:list/utility/end_teleport/visual_end

# Uccisione marker riferimento
kill @e[type=marker,distance=..4,sort=nearest,limit=1,tag=shadow.objective]

# Uccisione marker abilità
kill @e[type=marker,distance=..2,sort=nearest,limit=1,tag=end_teleport.marker]