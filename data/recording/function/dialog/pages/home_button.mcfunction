##########################################################
## Chiamata da recording:dialog/pages/home_loop         ##
## Esecutore: il giocatore                              ##
## Macro: recording:view loop (i)                       ##
## Pulsante della partita nello slot i (codice 100+i)   ##
##########################################################

$data modify storage recording:view match set from storage api.nevosjj.lobby:match_list elements[$(i)]
function recording:dialog/text/time with storage recording:view match.duration

data modify storage recording:view button set value {label:{text:"",color:"gold"},tooltip:[{text:"Mappa: ",color:"gray"},{text:"",color:"white"},{text:"\nModalità: ",color:"gray"},{text:"",color:"white"},{text:"\nDurata: ",color:"gray"},{text:"",color:"white"},{text:"\nVincitore: ",color:"gray"},{text:"",color:"gold"}],width:300,action:{type:"minecraft:run_command",command:""}}
data modify storage recording:view button.label.text set from storage recording:view match.match_id
data modify storage recording:view button.tooltip[1].text set from storage recording:view match.map
data modify storage recording:view button.tooltip[3].text set from storage recording:view match.type
data modify storage recording:view button.tooltip[5].text set from storage recording:view time
data modify storage recording:view button.tooltip[7].text set from storage recording:view match.players[{winner:1b}].username
$data modify storage recording:view button.action.command set value "/trigger recording.nav set 10$(i)"

data modify storage recording:view dialog.actions append from storage recording:view button
