##########################################################
## Chiamata da recording:dialog/pages/*                 ##
## Dialog con lista di pulsanti (multi_action)          ##
## La pagina mette titolo, corpo, pulsanti e            ##
## exit_action                                          ##
##########################################################

data modify storage recording:view dialog set value {type:"minecraft:multi_action",title:"",body:[],actions:[],columns:1,pause:false,after_action:"wait_for_response"}
