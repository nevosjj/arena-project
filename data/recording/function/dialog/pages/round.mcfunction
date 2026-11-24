##########################################################
## Chiamata da recording:dialog/route                   ##
## Esecutore: il giocatore (score temp)                 ##
## Round r = recording.nav - 300: durata, vincitore     ##
## ed eventi in ordine                                  ##
##########################################################

# Round
scoreboard players operation @s temp = @s recording.nav
scoreboard players remove @s temp 300
execute store result storage recording:view args.r int 1.0 run scoreboard players get @s temp
data remove storage recording:view round
function recording:dialog/pages/round_load with storage recording:view args
execute unless data storage recording:view round run return run function recording:dialog/pages/timeline

function recording:dialog/base/notice
data modify storage recording:view dialog.action.action.command set value "/trigger recording.nav set 4"
function recording:dialog/text/number with storage recording:view round
data modify storage recording:view dialog.title set value [{text:"ʀᴏᴜɴᴅ ",color:"gray"},{text:"",color:"gold",bold:true}]
data modify storage recording:view dialog.title[1].text set from storage recording:view str

# Durata e vincitore
function recording:dialog/text/time with storage recording:view round.duration
data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:[{text:""},{text:"Durata: ",color:"gray"},{text:"",color:"white"},{text:"\nVincitore: ",color:"gray"},{text:"",color:"gold"}]}
data modify storage recording:view dialog.body[-1].contents[2].text set from storage recording:view time
data modify storage recording:view dialog.body[-1].contents[4].text set from storage recording:view round.winner

# Eventi
data modify storage recording:view loop set value {k:1}
data modify storage recording:view loop.list set from storage recording:view round.events
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/round_loop
execute unless data storage recording:view round.events[0] run data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:{text:"Nessun evento registrato.",color:"gray"}}

function recording:dialog/show with storage recording:view
