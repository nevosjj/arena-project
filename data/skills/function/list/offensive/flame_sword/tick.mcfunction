#####################################################
## Chiamata da root:ticks/skills                   ##
## Esecutore: giocatore con flame_sword.energy     ##
#####################################################

execute if score @s duration.offensive matches ..0 at @s run return run function skills:list/offensive/flame_sword/reset
scoreboard players remove @s duration.offensive 1

# Aura di fuoco
function skills:list/offensive/flame_sword/visual_ring
