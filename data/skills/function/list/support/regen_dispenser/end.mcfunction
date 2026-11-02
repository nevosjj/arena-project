##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Esecutore e posizione: il cervello                   ##
## Fine durata: rimozione SENZA distruzione.            ##
##########################################################

# Feedback
particle poof ~ ~ ~ 0.2 0.2 0.2 0.02 10 force
playsound block.vault.reject_rewarded_player player @a ~ ~ ~ 1.5 2
playsound entity.breeze.death player @a ~ ~ ~ 2 1.6

# Pulizia
function skills:auxiliary/summon/remove
kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
function skills:auxiliary/summon/kill
