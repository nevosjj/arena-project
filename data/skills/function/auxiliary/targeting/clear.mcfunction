############
# INFO
# Chiude una ricerca aperta da skills:auxiliary/targeting/select_*
# Va chiamata SEMPRE dopo aver usato i bersagli selezionati.
############

tag @e[tag=target.source] remove target.source
tag @e[tag=target.selected] remove target.selected
data remove storage arenaproject:game_memory targetSource
scoreboard players reset #source teamID
