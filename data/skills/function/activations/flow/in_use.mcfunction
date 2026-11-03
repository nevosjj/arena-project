#########################################################
## Chiamata da skills:activations/flow/cooldown        ##
## Macro: temporary.activation (skillTYPE_txt)         ##
## Mette l'abilità IN USO: niente timer finché         ##
## l'abilità non chiama skills:cooldowns/delayed/start ##
#########################################################

# Stato
$tag @s add $(skillTYPE_txt).in_use

# Vetro IN USO
data modify storage arenaproject:game_memory temporary.activation merge value {glassItem:"orange_stained_glass_pane",glassName:"IN USO",glassColor:"gold"}
