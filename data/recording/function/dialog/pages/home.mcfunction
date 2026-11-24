##########################################################
## Chiamata da recording:dialog/route || dialog/open    ##
## Esecutore: il giocatore                              ##
## Home: un pulsante per partita salvata, dalla         ##
## più recente (slot saveIndex - 1) all'indietro        ##
##########################################################

function recording:dialog/base/menu
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"ᴘᴀʀᴛɪᴛᴇ",color:"gold",bold:true}]
data modify storage recording:view dialog.exit_action set value {label:{text:"Chiudi",color:"gray"},width:150}

# Nessuna partita salvata
execute unless data storage api.nevosjj.lobby:match_list elements[].match_id run return run function recording:dialog/pages/home_empty

data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:{text:"Le ultime partite giocate, dalla più recente.",color:"gray"}}

# Pulsanti (7 slot, i = slot, k = quanti ne ho visti)
data modify storage recording:view loop set value {k:0}
data modify storage recording:view loop.i set compute default integer recording:dialog/home/first
function recording:dialog/pages/home_loop with storage recording:view loop

function recording:dialog/show with storage recording:view
