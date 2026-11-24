##########################################################
## Chiamata da recording:dialog/route                   ##
## Esecutore: il giocatore                              ##
## Equipaggiamento: testa e 4 abilità di ogni giocatore ##
##########################################################

function recording:dialog/base/notice
data modify storage recording:view dialog.action.action.command set value "/trigger recording.nav set 5"
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"ᴇǫᴜɪᴘᴀɢɢɪᴀᴍᴇɴᴛᴏ",color:"aqua",bold:true}]

data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:{text:"",color:"gold"}}
data modify storage recording:view dialog.body[-1].contents.text set from storage recording:view match.match_id

data modify storage recording:view loop set value {k:0}
data modify storage recording:view loop.list set from storage recording:view match.players
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/equipment_loop

function recording:dialog/show with storage recording:view
