#######################################################
## Chiamata da skills:auxiliary/range_preview/check  ##
## Esecutore e posizione: il giocatore | Macro: type ##
#######################################################

$execute store result storage arenaproject:game_memory rangePreview.range int 1 run scoreboard players get @s condition_range.$(type)
function skills:auxiliary/range_preview/particle with storage arenaproject:game_memory rangePreview
data remove storage arenaproject:game_memory rangePreview
