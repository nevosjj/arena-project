##########################################################
## Chiamata da recording:dialog/route || pages/round    ##
## Esecutore: il giocatore                              ##
## Timeline: durata media e un pulsante per round       ##
## (300+r)                                              ##
##########################################################

function recording:dialog/base/menu
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"ᴛɪᴍᴇʟɪɴᴇ",color:"yellow",bold:true}]
data modify storage recording:view dialog.exit_action set value {label:{text:"Indietro",color:"gray"},width:150,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 5"}}

function recording:dialog/text/time with storage recording:view match.avg_round
data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:[{text:""},{text:"",color:"gold"},{text:"\nDurata media dei round: ",color:"gray"},{text:"",color:"white"}]}
data modify storage recording:view dialog.body[-1].contents[1].text set from storage recording:view match.match_id
data modify storage recording:view dialog.body[-1].contents[3].text set from storage recording:view time

# Nessun round: il dialog diventa un notice con il solo Indietro
execute unless data storage recording:view match.rounds[0] run return run function recording:dialog/pages/timeline_empty

data modify storage recording:view loop set value {k:0,base:300}
data modify storage recording:view loop.list set from storage recording:view match.rounds
function recording:dialog/pages/timeline_loop

function recording:dialog/show with storage recording:view
