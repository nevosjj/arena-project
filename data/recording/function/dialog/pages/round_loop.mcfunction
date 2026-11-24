#############################################################
## Chiamata da recording:dialog/pages/round e da sé stessa ##
## Esecutore: il giocatore                                 ##
## Evento loop.list[0]: "Evento k / Tempo m:ss /           ##
## descrizione" (recording:dialog/events/*)                ##
#############################################################

data modify storage recording:view loop.entry set from storage recording:view loop.list[0]

# Numero e tempo
data modify storage recording:view args.n set from storage recording:view loop.k
function recording:dialog/text/number with storage recording:view args
function recording:dialog/text/time with storage recording:view loop.entry
data modify storage recording:view line set value [{text:""},{text:"Evento ",color:"gold",bold:true},{text:"",color:"gold",bold:true},{text:"\nTempo ",color:"gray"},{text:"",color:"white"},{text:"\n"}]
data modify storage recording:view line[2].text set from storage recording:view str
data modify storage recording:view line[4].text set from storage recording:view time

# Descrizione
execute if data storage recording:view loop.entry{event:"ultimate"} run function recording:dialog/events/ultimate
execute if data storage recording:view loop.entry{event:"powerup_spawn"} run function recording:dialog/events/powerup_spawn
execute if data storage recording:view loop.entry{event:"powerup_pick"} run function recording:dialog/events/powerup_pick
execute if data storage recording:view loop.entry{event:"kill"} run function recording:dialog/events/kill
execute if data storage recording:view loop.entry{event:"overtime"} run function recording:dialog/events/overtime
execute if data storage recording:view loop.entry{event:"round_end"} run function recording:dialog/events/round_end

data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:[]}
data modify storage recording:view dialog.body[-1].contents set from storage recording:view line

data remove storage recording:view loop.list[0]
data modify storage recording:view loop.k set compute default integer recording:dialog/loop/next_k
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/round_loop
