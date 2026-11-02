################################################
## Chiamata da skills:activations/flow/marker ##
## Esecutore: il caster                       ##
################################################

# Setup del cervello (il marker dell'abilità, evocato tra busto e piedi del caster)
# NON uccidere il marker qui: è il cervello del distributore e vive per tutta la durata.
# Lo eliminano end (fine durata) e destroyed (distruzione).
execute as @e[type=marker,tag=regen_dispenser.marker,distance=..2,limit=1,sort=nearest] at @s \
    run function skills:list/support/regen_dispenser/setup with entity @s data
