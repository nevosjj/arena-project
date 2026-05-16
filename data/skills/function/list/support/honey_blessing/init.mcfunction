############
# INFO
# CHIAMATA DA skills/activations/marker
############

# Ricerca 
execute as @e[type=marker,tag=honey_blessing.marker,distance=..2,sort=nearest,limit=1] at @s \
    run function skills:list/support/honey_blessing/marker with entity @s data