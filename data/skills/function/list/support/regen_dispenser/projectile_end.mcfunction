#####################################################################
## Chiamata da skills:list/support/regen_dispenser/projectile_tick ##
## Esecutore e posizione: il proiettile (muro o fine gittata)      ##
#####################################################################

particle item{item:"minecraft:golden_apple"} ~ ~ ~ 0.1 0.1 0.1 0.1 8 force
playsound entity.item.break player @a ~ ~ ~ 1 1.4
function skills:auxiliary/summon/kill
