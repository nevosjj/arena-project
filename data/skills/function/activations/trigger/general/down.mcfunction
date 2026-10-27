###############################################
## Funzione ausiliaria                       ##
## Mette in una condizione di fare capire    ##
## che l'abilità è giù e altre cose tecniche ##
###############################################

# Impostazione timer
$scoreboard players operation @s cooldown.$(skillTYPE_txt)_timer = @s cooldown.$(skillTYPE_txt)
$tag @s add $(skillTYPE_txt)_down

# Reset
data remove storage arenaproject:game_memory temporary.down