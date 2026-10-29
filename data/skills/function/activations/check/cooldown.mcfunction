#######################################################
## Chiamato da skills:activations/types/funzioni     ##
## TRANNE QUELLA OFFENSIVA                           ##
## Revoca advancement e controlla le ricariche       ##
## Antispam incluso                                  ##
#######################################################

# Revocazione advancement
$advancement revoke @s only skills:$(skillTYPE_txt)

## CHECK RICARICA (Silent)
$execute if score @s cooldown.$(skillTYPE_txt)_timer matches 1.. if score @s antispam.$(skillTYPE_txt) matches 1.. run tag @s add silent.cooldown.feedback

## CHECK RICARICA (Feedback e Silent)
# In entrambi i casi l'abilità va bloccata, il tag silent decide solo se mostrare il feedback
$execute if score @s cooldown.$(skillTYPE_txt)_timer matches 1.. run return run tag @s add $(skillTYPE_txt).cooldown.failed

## Impsotazione antispam
$scoreboard players set @s antispam.$(skillTYPE_txt) 20

## Reset datapath
data remove storage arenaproject:game_memory temporary.cd_check