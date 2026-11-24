#################################################################
## Chiamata da recording:dialog/pages/equipment e da sé stessa ##
## Riga del giocatore loop.list[0]: testa (item) e             ##
## abilità nella descrizione                                   ##
#################################################################

data modify storage recording:view loop.entry set from storage recording:view loop.list[0]

data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:""}}},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"",color:"white",bold:true},{text:"",color:"gold"},{text:"\nOffensiva: ",color:"gray"},{text:"",color:"red"},{text:"\nUtilità: ",color:"gray"},{text:"",color:"green"},{text:"\nSupporto: ",color:"gray"},{text:"",color:"yellow"},{text:"\nUltimate: ",color:"gray"},{text:"",color:"gold"}]}}
data modify storage recording:view dialog.body[-1].item.components."minecraft:profile".name set from storage recording:view loop.entry.username
data modify storage recording:view dialog.body[-1].description.contents[1].text set from storage recording:view loop.entry.username
execute if data storage recording:view loop.entry{winner:1b} run data modify storage recording:view dialog.body[-1].description.contents[2].text set value " ♛"
data modify storage recording:view dialog.body[-1].description.contents[4].text set from storage recording:view loop.entry.skills.offensive
data modify storage recording:view dialog.body[-1].description.contents[6].text set from storage recording:view loop.entry.skills.utility
data modify storage recording:view dialog.body[-1].description.contents[8].text set from storage recording:view loop.entry.skills.support
data modify storage recording:view dialog.body[-1].description.contents[10].text set from storage recording:view loop.entry.skills.ultimate

data remove storage recording:view loop.list[0]
execute if data storage recording:view loop.list[0] run function recording:dialog/pages/equipment_loop
