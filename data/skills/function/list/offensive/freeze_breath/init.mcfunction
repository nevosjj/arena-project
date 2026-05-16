############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback audio
function skills:list/offensive/freeze_breath/feedback

# Riferimento
summon marker ^-3 ^ ^ {Tags:["freeze.objective"]}

# Ricorsione
execute as @e[type=marker,distance=..2,sort=nearest,limit=1,tag=freeze_breath.marker] at @s facing entity @e[type=marker,tag=freeze.objective,limit=1,sort=nearest] eyes run function skills:list/offensive/freeze_breath/setup