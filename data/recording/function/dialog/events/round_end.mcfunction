##########################################################
## Chiamata da recording:dialog/pages/round_loop        ##
## "Fine del round, vince X"                            ##
##########################################################

data modify storage recording:view icon set value "minecraft:diamond"
data modify storage recording:view line append value {text:"Fine del round",color:"yellow"}
execute unless data storage recording:view loop.entry.player run return 1
data modify storage recording:view line append value {text:", vince ",color:"gray"}
data modify storage recording:view line append value {text:"",color:"gold"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.player
