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

## Statistiche post-partita (danno netto, dopo l'overtime)
# Attaccante: tag summon.attacker (health:summon/melee || health:summon/ability_damage)
scoreboard players operation @a[tag=summon.attacker] poststat.summon_damage_inflicted += @s incoming_damage
execute if score @s melee_damage matches 1.. run scoreboard players operation @a[tag=summon.attacker] poststat.melee_inflicted += @s incoming_damage
execute if score @s ability_damage matches 1.. run scoreboard players operation @a[tag=summon.attacker] poststat.ability_inflicted += @s incoming_damage

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
execute at @s run function health:summon/hit with entity @s data
