###########################################################
## Chiamata da skills:list/support/regen_dispenser/init  ##
## Esecutore: il marker abilità (regen_dispenser.marker) ##
## Posizione: il centro del dispenser                    ##
## Crea il marker del cerchio di bersagliamento e gli    ##
## passa i data (range, teamID). È "summon.part": viene  ##
## pulito con il resto dell'evocazione.                  ##
###########################################################

summon marker ~ ~ ~ {Tags:["summon.part","regen_dispenser.range","regen_dispenser.range_new"]}
data modify entity @e[type=marker,tag=regen_dispenser.range_new,distance=..0.1,limit=1] data set from entity @s data
tag @e[type=marker,tag=regen_dispenser.range_new,distance=..0.1] remove regen_dispenser.range_new
