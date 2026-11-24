##########################################################
## Chiamata da recording:dialog/pages/round_loop        ##
## "È comparso il power-up Y"                           ##
##########################################################

data modify storage recording:view line append value {text:"È comparso il power-up ",color:"gray"}
function recording:dialog/events/powerup_name
