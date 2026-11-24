##########################################################
## Chiamata da recording:dialog/pages/*                 ##
## Dialog senza lista (notice) con il solo              ##
## pulsante Indietro: la pagina mette il codice         ##
## in dialog.action.action.command                      ##
##########################################################

data modify storage recording:view dialog set value {type:"minecraft:notice",title:"",body:[],pause:false,after_action:"wait_for_response",action:{label:{text:"Indietro",color:"gray"},width:150,action:{type:"minecraft:run_command",command:""}}}
