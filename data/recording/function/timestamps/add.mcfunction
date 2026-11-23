##########################################################
## Chiamata da recording:timestamps/* || rounds/end       ##
## Aggiunge l'evento in match_recorder:data event agli  ##
## eventi del round in corso, con il tempo della        ##
## partita (#match match.minutes/seconds)               ##
##########################################################

# Senza un round registrato l'evento si scarta
execute unless data storage match_recorder:data actual_match.rounds[-1] run return run data remove storage match_recorder:data event

# Tempo
execute store result storage match_recorder:data event.m int 1.0 run scoreboard players get #match match.minutes
execute store result storage match_recorder:data event.s int 1.0 run scoreboard players get #match match.seconds

# Inserimento
data modify storage match_recorder:data actual_match.rounds[-1].events append from storage match_recorder:data event
data remove storage match_recorder:data event
