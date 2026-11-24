##########################################################
## Chiamata da match:events/powerup/pick               ##
## Esecutore: il giocatore                             ##
## Macro: match_data:1v1 powerups[heal] (name, amount) ##
## Cura rigenerativa: $(amount) nella pool di          ##
## stat.regeneration_pool (health:regeneration/add).   ##
##########################################################

# Feedback
particle totem_of_undying ~ ~1.2 ~ 0.2 0.3 0.2 0.3 10 force
playsound minecraft:block.trial_spawner.open_shutter voice @a ~ ~ ~ 2 1

# Annuncio
function match:events/powerup/logic/pick_feedback {name:"Cura",color:"green"}

# Cura rigenerativa (si somma alla pool già presente)
$data modify storage arenaproject:game_memory regen.add set value $(amount)
function health:regeneration/add
