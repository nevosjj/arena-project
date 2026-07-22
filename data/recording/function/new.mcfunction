##########################
# Chiamata da: match:start
##########################

data modify storage match_recorder:data actual_match \
    set value \
    {\
        match_id:"",\
        type:"",\
        map:"",\ 
        duration:"",\ 
        timelines:[],\
        players:[]}