########################################################
## Funzione ausiliaria                                ##
## Chiamata da skills:activations/types/tipi abilita  ##
## Blocca l'utilizzo dell'abilità se non ha           ##
## trovato nessun bersaglio il raycast/area           ##
########################################################

# Reimpostazione punteggio
$scoreboard players set @s condition.$(skillTYPE_txt) 1

# Feedback
$execute unless score @s antispam_target.$(skillTYPE_txt) matches 1.. run function skills:activations/trigger/general/feedback with storage arenaproject:game_memory temporary.condition

# Reset
data remove storage arenaproject:game_memory temporary.condition