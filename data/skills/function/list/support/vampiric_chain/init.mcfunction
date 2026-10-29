############
# INFO
# CHIAMATA DA skills/activations/marker
############

# Suono di attivazione
playsound entity.ghast.hurt hostile @a ~ ~ ~ 2 0

# Tag proprietario
tag @s add vampiric_chain_user

# Distribuzione tags
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=vampiric_chain.marker] at @s \
    run function skills:list/support/vampiric_chain/target with entity @s data

# Rimozione tag
tag @s remove vampiric_chain_user