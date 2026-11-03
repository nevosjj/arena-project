###########################################################
## Chiamata da skills:list/support/regen_dispenser/tick  ##
## || regen_dispenser/destroyed                          ##
## Esecutore: l'evocazione (hitbox) | Macro: i suoi data ##
## Posizione: il centro del dispenser (hitbox + 0.3)     ##
## Unica fine dell'abilità (durata finita o distrutto)   ##
###########################################################

# Ricarica del caster
$execute as @a[tag=in_game,scores={ID=$(ID)},limit=1] run function skills:cooldowns/delayed/start {skillTYPE_txt:"support",hotbarIndex:2}

# Feedback particellare
particle block{block_state:"minecraft:dispenser"} ~ ~ ~ 0.3 0.3 0.3 0.4 15 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

# Feedback sonoro
playsound entity.generic.explode player @a ~ ~ ~ 1 1.6
playsound entity.breeze.death player @a ~ ~ ~ 2 1.6

# Pulizia
kill @e[type=block_display,tag=regen_dispenser.visual,distance=..0.1,limit=1]
kill @e[type=block_display,tag=regen_dispenser.propeller,distance=..0.1]
function skills:auxiliary/summon/kill
