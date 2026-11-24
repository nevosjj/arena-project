##########################################################
## Chiamata da recording:dialog/route || pages/player   ##
## Esecutore: il giocatore                              ##
## Statistiche: un pulsante per giocatore (200+p)       ##
##########################################################

function recording:dialog/base/menu
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"sᴛᴀᴛɪsᴛɪᴄʜᴇ",color:"red",bold:true}]
data modify storage recording:view dialog.exit_action set value {label:{text:"Indietro",color:"gray"},width:150,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 5"}}

data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:[{text:""},{text:"",color:"gold"},{text:"\nScegli un giocatore.",color:"gray"}]}
data modify storage recording:view dialog.body[-1].contents[1].text set from storage recording:view match.match_id

data modify storage recording:view loop set value {k:0,base:200}
data modify storage recording:view loop.list set from storage recording:view match.players
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/stats_loop

function recording:dialog/show with storage recording:view
