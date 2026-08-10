############
# INFO
# CHIAMATA DA skills/activations/marker
############

# Ricerca 
execute as @e[type=marker,tag=golden_apple.marker,distance=..2,sort=nearest,limit=1] at @s \
    run function skills:list/support/golden_apple/marker with entity @s data