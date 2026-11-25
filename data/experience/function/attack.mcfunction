##############################################################
## Chiamata da health:auxiliary/attack_hurt                 ##
## Esecutore: il giocatore che ha colpito (damage.dealer)   ##
## Aggiunge experience_melee XP (expMelee della modalità).  ##
## Con Spada di fiamme attiva l'energia non si genera.      ##
##############################################################

execute if entity @s[tag=flame_sword.energy] run return 0

# Statistiche post-partita (prima dell'aumento, stessa quantità sotto)
data modify storage arenaproject:game_memory xpStats.objective set value "melee_xp_generated"
execute store result storage arenaproject:game_memory xpStats.gain int 1 run scoreboard players get @s experience_melee
function experience:stats with storage arenaproject:game_memory xpStats

# Già a 100: tutta l'XP è scarto (contata sopra), niente aumento
execute if score @s experience_level matches 100.. run return 0

# Aggiunta di esperienza dopo l'attacco
scoreboard players operation @s experience_level += @s experience_melee
execute store result storage arenaproject:game_memory temporary_exp.expGain int 1.0 run scoreboard players get @s experience_level
function experience:macro with storage arenaproject:game_memory temporary_exp
stopsound @s * entity.player.levelup
