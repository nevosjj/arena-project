##########################################################
## Chiamata da recording:dialog/events/powerup_*        ##
## Nome del power-up (tipo id se non è tradotto)        ##
##########################################################

data modify storage recording:view line append value {text:"",color:"light_purple"}
data modify storage recording:view line[-1].text set from storage recording:view loop.entry.powerup
execute if data storage recording:view loop.entry{powerup:"heal"} run data modify storage recording:view line[-1].text set value "Cura"
execute if data storage recording:view loop.entry{powerup:"berserk"} run data modify storage recording:view line[-1].text set value "Berserk"
