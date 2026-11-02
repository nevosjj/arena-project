###################################################################################
## Chiamata da health:summon/melee_hit e health:summon/ability_damage            ##
## Esecutore: la hitbox colpita                                                  ##
## Annulla a round finito, applica l'overtime, testo danno, scala summon.health. ##
## Poi chiama skills:list/<abilityType>/<abilityName>/hit (suono custom).        ##
###################################################################################

# Round finito: danno annullato
execute if score #round_ended bool matches 1 run return run function health:math/nullify

# Moltiplicatore overtime
scoreboard players set #match temp 100
scoreboard players set #match temp2 100
scoreboard players operation #match temp2 += #overtime multiplier
scoreboard players operation @s incoming_damage *= #match temp2
scoreboard players operation @s incoming_damage /= #match temp

# Feedback in-game text_display
execute store result storage arenaproject:game_memory damageFeedback.text int 1.0 run scoreboard players get @s incoming_damage
execute at @s run function health:texts/damage with storage arenaproject:game_memory damageFeedback

# Rimozione
scoreboard players operation @s summon.health -= @s incoming_damage

# Reset
data remove storage arenaproject:game_memory damageFeedback
scoreboard players reset @s melee_damage
scoreboard players reset @s ability_damage
scoreboard players reset @s incoming_damage

# Feedback custom dell'evocazione: skills:list/<abilityType>/<abilityName>/hit
scoreboard players operation #summon summon.ID = @s summon.ID
execute at @s as @e[type=marker,tag=summon.brain,distance=..16] if score @s summon.ID = #summon summon.ID run function health:summon/hit with entity @s data
scoreboard players reset #summon summon.ID
