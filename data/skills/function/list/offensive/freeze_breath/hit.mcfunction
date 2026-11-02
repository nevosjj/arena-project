#######################################################################
## Chiamata da skills:list/offensive/freeze_breath/step              ##
## Esecutore: il bersaglio | Posizione: il marker                    ##
## Togliendo target.selected ogni bersaglio viene colpito una volta. ##
#######################################################################

tag @s remove target.selected
function skills:auxiliary/targeting/apply_damage with storage arenaproject:game_memory targetSource
