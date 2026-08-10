############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback sonoro
playsound block.crafter.craft player @a ~ ~ ~ 2 1

# Marker di riferimento (facing)
summon marker ^ ^1.2 ^5 {Tags:["lightning_strike.objective"]}
execute anchored eyes run summon marker ~ ~1 ~ {Tags:["lightning_strike.recursion"]} 

# Setup
execute as @e[type=marker,distance=..4,tag=lightning_strike.recursion] at @s run function skills:list/offensive/lightning_strike/setup

# Inizio ricorsione
execute as @e[type=marker,tag=lightning_strike.recursion,distance=..2,limit=1,sort=nearest] at @s run function skills:list/offensive/lightning_strike/recursion

# Feedback della fine
#function skills:list/utility/end_teleport/visual_end

# Uccisione marker riferimento
kill @e[type=marker,distance=..16,sort=nearest,limit=1,tag=lightning_strike.objective]

# Uccisione marker abilità
kill @e[type=marker,distance=..4,sort=nearest,limit=1,tag=lightning_strike.marker]