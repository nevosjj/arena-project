##########################################################
## Chiamata da recording:dialog/route                   ##
## Esecutore: il giocatore                              ##
## Partita scelta (recording:view match): dati          ##
## generali e pulsanti Statistiche, Equipaggiamento     ##
## e Timeline                                           ##
##########################################################

function recording:dialog/base/menu
data modify storage recording:view dialog.title set value [{text:"ʀᴇɢɪsᴛʀᴏ ",color:"gray"},{text:"ᴘᴀʀᴛɪᴛᴀ",color:"gold",bold:true}]
data modify storage recording:view dialog.exit_action set value {label:{text:"Indietro",color:"gray"},width:150,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 1"}}

# Dati generali
function recording:dialog/text/time with storage recording:view match.duration
execute store result storage recording:view args.n int 1.0 run data get storage recording:view match.rounds
function recording:dialog/text/number with storage recording:view args

data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:[{text:""},{text:"",color:"gold",bold:true},{text:"\n\nMappa: ",color:"gray"},{text:"",color:"white"},{text:"\nModalità: ",color:"gray"},{text:"",color:"white"},{text:"\nDurata: ",color:"gray"},{text:"",color:"white"},{text:"\nRound giocati: ",color:"gray"},{text:"",color:"white"},{text:"\nVincitore: ",color:"gray"},{text:"",color:"gold"}]}
data modify storage recording:view dialog.body[-1].contents[1].text set from storage recording:view match.match_id
data modify storage recording:view dialog.body[-1].contents[3].text set from storage recording:view match.map
data modify storage recording:view dialog.body[-1].contents[5].text set from storage recording:view match.type
data modify storage recording:view dialog.body[-1].contents[7].text set from storage recording:view time
data modify storage recording:view dialog.body[-1].contents[9].text set from storage recording:view str
data modify storage recording:view dialog.body[-1].contents[11].text set from storage recording:view match.players[{winner:1b}].username

# Sezioni
data modify storage recording:view dialog.actions append value {label:{text:"Statistiche",color:"red"},tooltip:{text:"Le statistiche di ogni giocatore"},width:200,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 2"}}
data modify storage recording:view dialog.actions append value {label:{text:"Equipaggiamento",color:"aqua"},tooltip:{text:"Le abilità scelte da ogni giocatore"},width:200,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 3"}}
data modify storage recording:view dialog.actions append value {label:{text:"Timeline",color:"yellow"},tooltip:{text:"I round e i loro eventi"},width:200,action:{type:"minecraft:run_command",command:"/trigger recording.nav set 4"}}

function recording:dialog/show with storage recording:view
