################################################
## Chiamata da skills:activations/flow/marker ##
## Esecutore: il caster                       ##
################################################

# Suono di attivazione
playsound block.chain.place player @a ~ ~ ~ 2 0.75
playsound item.trident.return player @a ~ ~ ~ 2 1.2
playsound entity.ghastling.death player @a ~ ~ ~ 2 0.7

# Tag proprietario
tag @s add vampiric_chain_user

# Distribuzione tags
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=vampiric_chain.marker] at @s \
    run function skills:list/support/vampiric_chain/target with entity @s data

# Rimozione tag
tag @s remove vampiric_chain_user
