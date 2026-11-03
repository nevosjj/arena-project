##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Crea il movimento                                    ##
##########################################################

# Dispenser
$data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] transformation.translation set value [-0.2f,$(y),-0.2f]
data modify entity @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1] start_interpolation set value 0

# Elica
$execute as @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1] run data modify entity @s transformation.translation set value [-0.033f,$(blade),0f]
execute as @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1] run data modify entity @s start_interpolation set value 0
