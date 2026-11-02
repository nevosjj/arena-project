####################################################################
## Chiamata da skills:list/support/regen_dispenser/tick           ##
## Esecutore e posizione: il cervello | Macro: y, blade           ##
## Sposta dispenser ed elica su/giù con interpolazione (20 tick). ##
## blade = y - 0.085 (pale un po' sotto il fondo del dispenser)   ##
####################################################################

# Dispenser
$data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] transformation.translation set value [-0.2f,$(y),-0.2f]
data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] start_interpolation set value 0

# Elica
$execute as @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1] run data modify entity @s transformation.translation set value [-0.033f,$(blade),0f]
execute as @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1] run data modify entity @s start_interpolation set value 0
