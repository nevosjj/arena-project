##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Esecutore e posizione: il cervello | Macro: y        ##
## Sposta il visual su/giù con interpolazione (20 tick) ##
##########################################################

$data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] transformation.translation set value [-0.3f,$(y),-0.3f]
data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] start_interpolation set value 0
