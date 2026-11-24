##########################################################
## Chiamata da recording:dialog/pages/round_loop        ##
## "X è stato ucciso da Y" (+ "con Z" se abilità)       ##
##########################################################

data modify storage recording:view icon set value "minecraft:skeleton_skull"
data modify storage recording:view line append value {text:"",color:"red"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.player

# Senza uccisore registrato
execute unless data storage recording:view loop.entry.killer run return run data modify storage recording:view line append value {text:" è morto",color:"gray"}

data modify storage recording:view line append value {text:" è stato ucciso da ",color:"gray"}
data modify storage recording:view line append value {text:"",color:"aqua"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.killer

# Abilità
execute unless data storage recording:view loop.entry.ability run return 1
data modify storage recording:view line append value {text:" con ",color:"gray"}
data modify storage recording:view line append value {text:"",color:"gold"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.ability
