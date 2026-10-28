########################################################
## Funzione ausiliaria                                ##
## Chiamata da skills:activations/types/tipi abilita  ##
## Blocca l'utilizzo dell'abilità se non ha           ##
## trovato nessun bersaglio il raycast/area           ##
########################################################

# Reimpostazione punteggio
$scoreboard players set @s condition.$(skillTYPE_txt) 1

# Reset
data remove storage arenaproject:game_memory temporary.condition

# Feedback
$execute if score @s antispam.$(skillTYPE_txt) matches ..0 run function skills:activations/trigger/general/feedback

# Impostazione antispam
$scoreboard players set @s antispam.$(skillTYPE_txt) 5