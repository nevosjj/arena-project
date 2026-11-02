#############################################################
## Chiamata da root:ticks/skills                           ##
## Esecutore e posizione: il cervello | Macro: i suoi data ##
#############################################################

# Fine durata
execute if score @s duration.support matches ..0 run return run function skills:list/support/regen_dispenser/end
scoreboard players remove @s duration.support 1

# Oscillazione (giù a 20, su a 40, ciclo di 40 tick)
scoreboard players add @s counter.support2 1
execute if score @s counter.support2 matches 20 run function skills:list/support/regen_dispenser/bob {y:-0.45f}
execute if score @s counter.support2 matches 40.. run function skills:list/support/regen_dispenser/bob {y:-0.15f}
execute if score @s counter.support2 matches 40.. run scoreboard players set @s counter.support2 0

# Sparo: in ricarica scala, a 0 spara (o resta in attesa di un bersaglio)
execute if score @s counter.support matches 1.. run return run scoreboard players remove @s counter.support 1
function skills:list/support/regen_dispenser/shoot with entity @s data
