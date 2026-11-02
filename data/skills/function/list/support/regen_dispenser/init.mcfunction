################################################
## Chiamata da skills:activations/flow/marker ##
################################################

# Evocazione
execute as @e[type=marker,tag=regen_dispenser.marker,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~-0.3 ~ \
    run function skills:auxiliary/summon/create with entity @s data

# Setup sull'evocazione appena creata (posizione: il centro del dispenser, 0.3 sopra la hitbox)
execute as @e[type=interaction,tag=summon.new,distance=..3,limit=1,sort=nearest] at @s positioned ~ ~0.3 ~ \
    run function skills:list/support/regen_dispenser/setup with entity @s data

# Il marker non serve più: l'evocazione è autonoma
execute as @e[type=marker,tag=regen_dispenser.marker,distance=..2,limit=1,sort=nearest] run kill @s
