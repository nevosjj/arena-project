##########################################################
## Chiamata da recording:dialog/pages/timeline          ##
## Esecutore: il giocatore                              ##
## Partita senza round registrati                       ##
##########################################################

data modify storage recording:view dialog.type set value "minecraft:notice"
data modify storage recording:view dialog.action set from storage recording:view dialog.exit_action
data remove storage recording:view dialog.exit_action
data remove storage recording:view dialog.actions
data remove storage recording:view dialog.columns
data modify storage recording:view dialog.body append value {type:"minecraft:plain_message",width:300,contents:{text:"Nessun round registrato.",color:"gray"}}
function recording:dialog/show with storage recording:view
