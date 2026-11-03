##################################################
## Chiamata da skills:list/utility/tornado/tick ##
## Esecutore: il marker | Macro: i suoi data    ##
## Fine durata del tornado                      ##
##################################################

# Ricarica del caster
$execute as @a[tag=in_game,scores={ID=$(ID)},limit=1] run function skills:cooldowns/delayed/start {skillTYPE_txt:"utility",hotbarIndex:1}

# Pulizia
scoreboard players reset @s
kill @s
