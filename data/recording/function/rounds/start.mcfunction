##########################################################
## Chiamata da match:events/end_selection               ##
## Apertura cancelli: inizia un nuovo round             ##
## Azzera l'orologio del round e crea il suo elemento   ##
## in actual_match.rounds                               ##
##########################################################

# Orologio del round (aumentato da match:display/time/check)
scoreboard players set #match round.minutes 0
scoreboard players set #match round.seconds 0

# Numero del round
data modify storage match_recorder:data actual_match.round_count set compute default integer recording:round/next_count

# Nuovo elemento
data modify storage match_recorder:data actual_match.rounds append value {n:0,duration:{m:0,s:0}}
data modify storage match_recorder:data actual_match.rounds[-1].n set from storage match_recorder:data actual_match.round_count
