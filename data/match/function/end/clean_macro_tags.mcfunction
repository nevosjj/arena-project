###################################################################
## Chiamata da match:end/cleanup                                 ##
## Rimuove i tag con l'ID del giocatore (es. owner_$(ID).*).     ##
## Pulisce @a: alcuni tag stanno sul bersaglio con l'ID di @s.   ##
###################################################################

# Owner
$tag @a remove owner_$(ID).bone_shield

# Condizioni e bersagli dell'attivazione
$tag @a remove offensive.condition.user_$(ID)
$tag @a remove utility.condition.user_$(ID)
$tag @a remove support.condition.user_$(ID)
$tag @a remove ultimate.condition.user_$(ID)
$tag @a remove offensive.skill_target.$(ID)
$tag @a remove utility.skill_target.$(ID)
$tag @a remove support.skill_target.$(ID)
$tag @a remove ultimate.skill_target.$(ID)

# Offensive
$tag @a remove flame_sword.player$(ID)
$tag @a remove freeze_breath_$(ID).victim

# Support
$tag @a remove vampiric_chain_user.$(ID)
$tag @a remove vampiric_chain_target.$(ID)

# Utility
$tag @a remove switch_user.$(ID)
$tag @a remove switch_target.$(ID)

# Selezione e animazioni
$tag @a remove minecart_couple_$(ID)
$tag @a remove animation.loser_$(ID)
