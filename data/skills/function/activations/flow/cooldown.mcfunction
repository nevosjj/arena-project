#####################################################
## Chiamata da skills:activations/flow/generic     ##
## Macro: temporary.activation (ID, skillTYPE_txt) ##
## Solo Support e Utility                          ##
## delayedCooldown: l'abilità resta IN USO e la    ##
## ricarica parte dalla sua fine                   ##
## (skills:cooldowns/delayed/start)                ##
## Altrimenti la ricarica parte subito             ##
#####################################################

# Ricarica ritardata
$execute if data storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skillTYPE_txt).technical{delayedCooldown:1b} \
    run return run function skills:activations/flow/in_use with storage arenaproject:game_memory temporary.activation

# Ricarica immediata
function skills:activations/trigger/general/down with storage arenaproject:game_memory temporary.activation
