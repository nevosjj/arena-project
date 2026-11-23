##########################################################
## Chiamata da recording:actions/start_recording        ##
## Macro: match_recorder:data actual_match (index)      ##
## Salva la partita nello storage della lobby           ##
## Slot ancora inesistente (lista non piena): append    ##
##########################################################

$execute unless data storage api.nevosjj.lobby:match_list elements[$(index)] run return run data modify storage api.nevosjj.lobby:match_list elements append from storage match_recorder:data actual_match
$data modify storage api.nevosjj.lobby:match_list elements[$(index)] set from storage match_recorder:data actual_match
