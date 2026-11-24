##########################################################
## Chiamata da recording:dialog/pages/round_loop        ##
## "X ha attivato la ultimate Y"                        ##
##########################################################

data modify storage recording:view line append value {text:"",color:"aqua"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.player
data modify storage recording:view line append value {text:" ha attivato la ultimate ",color:"gray"}
data modify storage recording:view line append value {text:"",color:"gold"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.skill
