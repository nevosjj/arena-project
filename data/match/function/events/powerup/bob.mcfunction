########################################################
## Chiamata da match:events/powerup/tick              ##
## Posizione: il marker del potenziamento | Macro: y  ##
## Sposta il blocco all'altezza y con interpolazione. ##
########################################################

$data modify entity @e[type=block_display,tag=powerup.visual,limit=1,sort=nearest] transformation.translation set value [-0.25f,$(y)f,-0.25f]
data modify entity @e[type=block_display,tag=powerup.visual,limit=1,sort=nearest] start_interpolation set value 0
