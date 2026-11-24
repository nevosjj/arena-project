################################################################
## Chiamata da recording:dialog/pages/timeline e da sé stessa ##
## Esecutore: il giocatore                                    ##
## Pulsante del round loop.list[0]                            ##
################################################################

data modify storage recording:view loop.entry set from storage recording:view loop.list[0]
function recording:dialog/text/number with storage recording:view loop.entry
function recording:dialog/text/time with storage recording:view loop.entry.duration

data modify storage recording:view button set value {label:[{text:"Round ",color:"yellow"},{text:"",color:"yellow"}],tooltip:[{text:"Durata: ",color:"gray"},{text:"",color:"white"},{text:"\nVincitore: ",color:"gray"},{text:"",color:"gold"}],width:200,action:{type:"minecraft:run_command",command:""}}
data modify storage recording:view button.label[1].text set from storage recording:view str
data modify storage recording:view button.tooltip[1].text set from storage recording:view time
data modify storage recording:view button.tooltip[3].text set from storage recording:view loop.entry.winner
function recording:dialog/button

data remove storage recording:view loop.list[0]
data modify storage recording:view loop.k set compute default integer recording:dialog/loop/next_k
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/timeline_loop
