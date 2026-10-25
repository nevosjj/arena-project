###################################################
## Chiamato da skills:activations/flow/generic   ##
## Estrae l'indice dell'abilità nel tipo abilità ##
###################################################

## Estrazione
$execute store result storage arenaproject:game_memory temporary.activation.skillIndex int 1 run data get storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skillTYPE_txt).meta.dynamicIndex