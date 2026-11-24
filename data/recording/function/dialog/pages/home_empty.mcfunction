##########################################################
## Chiamata da recording:dialog/pages/home              ##
## Esecutore: il giocatore                              ##
## Nessuna partita salvata                              ##
##########################################################

function recording:dialog/base/notice
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"ᴘᴀʀᴛɪᴛᴇ",color:"gold",bold:true}]
data modify storage recording:view dialog.action set value {label:{text:"Chiudi",color:"gray"},width:150}
data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:{text:"Non c'è ancora nessuna partita registrata.",color:"gray"}}
function recording:dialog/show with storage recording:view
