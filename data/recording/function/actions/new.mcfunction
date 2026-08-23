######################################
## Chiamata da: match:events/start  ##
## La funzione crea recorder vuoto  ##
######################################

data modify storage match_recorder:data actual_match \
    set value \
    {\
        match_id:"",\
        type:"",\
        map:"",\ 
        duration:"",\ 
        timelines:[],\
        players:[]\
        }