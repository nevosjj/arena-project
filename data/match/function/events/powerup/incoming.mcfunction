########################################################
## Chiamata da match:events/powerup/announce          ##
## Macro: arenaproject:game_memory temporary.powerup  ##
## Evoca il marker del potenziamento in anteprima. Il ##
## marker fa da cervello fino alla raccolta.          ##
########################################################

$summon marker $(pos) {Tags:["powerup.brain","powerup.incoming"],data:{type:"$(type)"}}
