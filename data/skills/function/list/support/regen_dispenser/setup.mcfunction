##########################################################
## Chiamata da skills:list/support/regen_dispenser/init ##
## Esecutore e posizione: il cervello | Macro: i data   ##
## Crea visual e hitbox, prepara durata e ricarica.     ##
##########################################################

# Durata e primo sparo dopo un intervallo completo
$scoreboard players set @s duration.support $(duration)
$scoreboard players set @s counter.support $(delay)
scoreboard players set @s counter.support2 0

# Visual: dispenser centrato sul cervello (oscilla con la translation)
summon block_display ~ ~ ~ {Tags:["summon.part","regen_dispenser.visual"],block_state:{id:"minecraft:dispenser",properties:{facing:"north"}},interpolation_duration:20,teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]}}

# Hitbox ferma che copre tutta l'oscillazione
$execute positioned ~ ~-0.5 ~ run function skills:auxiliary/summon/create {width:0.8,height:1.0,health:$(health)}

# Feedback
particle block{block_state:"minecraft:dispenser"} ~ ~ ~ 0.2 0.2 0.2 0.1 15 force
playsound block.dispenser.dispense player @a ~ ~ ~ 2 0.8
playsound block.piston.contract player @a ~ ~ ~ 2 1.2
playsound block.vault.open_shutter player @a ~ ~ ~ 2 0.8

# Pronto (tick in root:ticks/skills)
tag @s add regen_dispenser.brain
