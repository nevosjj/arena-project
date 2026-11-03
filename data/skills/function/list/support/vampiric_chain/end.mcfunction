#########################################################
## Chiamata da skills:list/support/vampiric_chain/tick ##
## Esecutore: il marker | Macro: i suoi data           ##
## La catena si spezza (bersaglio fuori raggio)        ##
#########################################################

# Ricarica del caster
$execute as @a[tag=in_game,scores={ID=$(ID)},limit=1] run function skills:cooldowns/delayed/start {skillTYPE_txt:"support",hotbarIndex:2}

# Reset temporaneo da rifare
$tag @a remove vampiric_chain_user.$(ID)
$tag @a remove vampiric_chain_target.$(ID)

# Reset
kill @s

# Feedback sonoro
playsound block.glass.break player @a ~ ~ ~ 2 0.7
playsound item.trident.return player @a ~ ~ ~ 2 0.85
playsound block.medium_amethyst_bud.break hostile @a ~ ~ ~ 2 1.8

# Feedback particellare
particle smoke ~ ~1 ~ 0.35 0.7 0.35 0.1 10 force
