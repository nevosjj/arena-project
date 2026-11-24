##########################################################
## Chiamata da recording:dialog/pages/round_loop        ##
## "X ha raccolto il power-up Y"                        ##
##########################################################

data modify storage recording:view line append value {text:"",color:"aqua"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.player
data modify storage recording:view line append value {text:" ha raccolto il power-up ",color:"gray"}
function recording:dialog/events/powerup_name
