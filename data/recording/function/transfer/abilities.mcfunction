##########################################################
## Chiamata da recording:transfer/player                ##
## Esecutore: il giocatore                              ##
## Macro: match_recorder:data player (ID)               ##
## Copia il nome delle 4 abilità scelte nel suo record  ##
##########################################################

$data modify storage match_recorder:data player.skills.offensive set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.offensive.display.name
$data modify storage match_recorder:data player.skills.utility set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.utility.display.name
$data modify storage match_recorder:data player.skills.support set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.support.display.name
$data modify storage match_recorder:data player.skills.ultimate set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.ultimate.display.name
