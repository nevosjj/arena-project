##########################################################
## Chiamata da skills:list/support/regen_dispenser/init ##
## Esecutore: l'evocazione | Macro: i suoi data         ##
## Posizione: il centro del dispenser (hitbox + 0.3)    ##
## Crea i visual, prepara durata e ricarica.            ##
##########################################################

# Evocazione presa in carico
tag @s remove summon.new

# Durata e primo sparo dopo un intervallo completo
$scoreboard players set @s duration.support $(duration)
$scoreboard players set @s counter.support $(delay)
scoreboard players set @s counter.support2 0

# Visual: dispenser nel centro (oscilla con la translation)
summon block_display ~ ~ ~ {Tags:["summon.part","regen_dispenser.visual"],block_state:{id:"minecraft:dispenser",properties:{facing:"north"}},interpolation_duration:20,teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.3f,-0.2f],scale:[0.4f,0.4f,0.4f]}}

# Elica: 3 pale di netherite sotto il dispenser, sfasate di 120° con lo yaw dell'entità.
# Ogni pala parte dall'asse (x centrata, z da 0 verso l'esterno) e si allunga in fuori.
# Girano con "rotate" + teleport_duration (interpolazione lato client), vedi propeller.
summon block_display ~ ~ ~ {Tags:["summon.part","regen_dispenser.propeller"],Rotation:[0f,0f],block_state:{id:"minecraft:netherite_block"},interpolation_duration:20,teleport_duration:6,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.033f,-0.385f,0f],scale:[0.067f,0.033f,0.293f]}}
summon block_display ~ ~ ~ {Tags:["summon.part","regen_dispenser.propeller"],Rotation:[120f,0f],block_state:{id:"minecraft:netherite_block"},interpolation_duration:20,teleport_duration:6,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.033f,-0.385f,0f],scale:[0.067f,0.033f,0.293f]}}
summon block_display ~ ~ ~ {Tags:["summon.part","regen_dispenser.propeller"],Rotation:[240f,0f],block_state:{id:"minecraft:netherite_block"},interpolation_duration:20,teleport_duration:6,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.033f,-0.385f,0f],scale:[0.067f,0.033f,0.293f]}}

# Feedback
particle block{block_state:"minecraft:dispenser"} ~ ~ ~ 0.2 0.2 0.2 0.1 15 force
playsound block.dispenser.dispense player @a ~ ~ ~ 2 0.8
playsound block.piston.contract player @a ~ ~ ~ 2 1.2
playsound block.vault.open_shutter player @a ~ ~ ~ 2 0.8

# Pronto (tick in root:ticks/skills)
tag @s add regen_dispenser.summon
