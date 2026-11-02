######################################################################
## Chiamata da health:summon/hit                                    ##
## Esecutore e posizione: l'evocazione colpita (piedi della hitbox) ##
######################################################################

playsound block.stone.hit player @a ~ ~ ~ 1.5 0.7
playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.6 1.8
particle block{block_state:"minecraft:dispenser"} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 6 force
