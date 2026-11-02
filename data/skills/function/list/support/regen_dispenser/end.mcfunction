##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Esecutore e posizione: il cervello                   ##
## Fine durata: rimozione SENZA distruzione.            ##
##########################################################

# Feedback
particle poof ~ ~ ~ 0.2 0.2 0.2 0.02 10 force
playsound block.beacon.deactivate player @a ~ ~ ~ 1.5 2

# Pulizia
function skills:auxiliary/summon/remove
kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
function skills:auxiliary/summon/kill
