############
# INFO
# CHIAMATA DA skills/activations/marker
############

# Suono di attivazione
playsound entity.ghast.shoot hostile @a ~ ~ ~ 2 1.4

# Tag temp proprietario
tag @s add vampiric_chain.temp

# Distribuzione tags
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=vampiric_chain.marker] at @s \
    run function skills:list/support/vampiric_chain/target with entity @s data