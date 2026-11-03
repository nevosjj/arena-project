##########################################################
## Chiamata da skills:list/support/regen_dispenser/tick ##
## Esecutore: l'evocazione (hitbox)                     ##
## Posizione: il centro del dispenser (hitbox + 0.3)    ##
## Fine durata: rimozione SENZA distruzione.            ##
##########################################################

# Feedback particellare
particle poof ~ ~ ~ 0.2 0.2 0.2 0.02 10 force

# Feedback sonoro
playsound block.vault.reject_rewarded_player player @a ~ ~ ~ 1.5 2
playsound entity.breeze.death player @a ~ ~ ~ 2 1.6

# Pulizia
kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
kill @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1]
function skills:auxiliary/summon/kill
