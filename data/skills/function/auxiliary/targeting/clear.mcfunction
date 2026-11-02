####################################################################################
## Chiamata da search_* e da chi usa select_* (es. magnetic_impulse)              ##
## Esecutore: il finder (lo stesso di select_*)                                   ##
## Chiude una ricerca: va chiamata SEMPRE dopo aver usato i bersagli selezionati. ##
####################################################################################

tag @s remove target.source
tag @a[tag=target.selected] remove target.selected
tag @e[type=interaction,tag=target.selected] remove target.selected
data remove storage arenaproject:game_memory targetSource
scoreboard players reset #source teamID
