###################################################
## Chiamata da skills:list/<tipo>/<abilità>/end  ##
## (abilità con delayedCooldown)                 ##
## Esecutore: il caster                          ##
## Macro: skillTYPE_txt, hotbarIndex             ##
## Fa partire la ricarica alla fine dell'abilità ##
###################################################

# Solo se l'abilità è ancora IN USO
# (evita doppie partenze e fini arrivate dopo un reset del round)
$execute unless entity @s[tag=$(skillTYPE_txt).in_use] run return fail
$tag @s remove $(skillTYPE_txt).in_use

# Timer e tag di ricarica
$function skills:activations/trigger/general/down {skillTYPE_txt:"$(skillTYPE_txt)"}

# Vetro IN RICARICA al posto di quello IN USO
# (non flow/unavailable: svuoterebbe la mano principale)
$item replace entity @s hotbar.$(hotbarIndex) with red_stained_glass_pane[custom_name=[{"text":"IN RICARICA","color":"red","bold":true,"italic":false}]]
