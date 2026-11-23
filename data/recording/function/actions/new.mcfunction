##########################################################
## Chiamata da matchmaking:1v1/start                    ##
## Crea il recorder vuoto della partita                 ##
## rounds: un elemento per round (recording:rounds/*)   ##
## round_count, rounds_seconds: solo per i calcoli,     ##
## rimossi prima del salvataggio                        ##
##########################################################

data modify storage match_recorder:data actual_match \
    set value \
    {\
        match_id:"",\
        type:"",\
        map:"",\
        duration:{m:0,s:0},\
        avg_round:{m:0,s:0},\
        round_count:0,\
        rounds_seconds:0,\
        rounds:[],\
        players:[]\
        }
