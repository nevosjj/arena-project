#############################################################
## Chiamata da recording:dialog/pages/stats e da sé stessa ##
## Pulsante del giocatore loop.list[0]                     ##
#############################################################

data modify storage recording:view loop.entry set from storage recording:view loop.list[0]

data modify storage recording:view button set value {label:[{text:"",color:"white"}],tooltip:{text:"Statistiche del giocatore"},width:200,action:{type:"minecraft:run_command",command:""}}
data modify storage recording:view button.label[0].text set from storage recording:view loop.entry.username
execute if data storage recording:view loop.entry{winner:1b} run data modify storage recording:view button.label append value {text:" ♛",color:"gold"}
function recording:dialog/button

data remove storage recording:view loop.list[0]
data modify storage recording:view loop.k set compute default integer recording:dialog/loop/next_k
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/stats_loop
