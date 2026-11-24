##########################################################
## Chiamata da recording:dialog/pages/*_loop            ##
## Aggiunge recording:view button ai pulsanti,          ##
## con il codice loop.base + loop.k                     ##
##########################################################

data modify storage recording:view loop.code set compute default integer recording:dialog/loop/code
function recording:dialog/button_command with storage recording:view loop
data modify storage recording:view dialog.actions append from storage recording:view button
