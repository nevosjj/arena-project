####################################################################################
## Chiamata da search_* e da chi usa select_* (es. magnetic_impulse)              ##
## Chiude una ricerca: va chiamata SEMPRE dopo aver usato i bersagli selezionati. ##
####################################################################################

tag @e[tag=target.source] remove target.source
tag @e[tag=target.selected] remove target.selected
data remove storage arenaproject:game_memory targetSource
scoreboard players reset #source teamID
