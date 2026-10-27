#######################################################
## Chiamato da skills:activations/types/funzioni     ##
## TRANNE QUELLA OFFENSIVA                           ##
## Controlla le condizioni di un'abilità             ##
#######################################################

# 0 = l'abilità non usa check
# 1 = l'abilità usa check
# 2 = l'abilità usa check e lo ha fallito, lo farà tornare a 1 dopo il feedback

## Controlla condizione con il datapath giusto
$execute if score @s condition.$(skillTYPE_txt) matches 1 run function skills:auxiliary/trigger/general/setup with storage arenaproject:game_memory temporary.condition

## Reset datapath
data remove storage arenaproject:game_memory temporary.condition