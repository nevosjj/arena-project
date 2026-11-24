###################################################################################
## Chiamata da health:summon/melee_hit e health:summon/ability_damage            ##
## Esecutore: la hitbox colpita                                                  ##
## Annulla a round finito, applica l'overtime, testo danno, scala summon.health. ##
## Poi chiama skills:list/<abilityType>/<abilityName>/hit (suono custom).        ##
###################################################################################

# Round finito: danno annullato
execute if score #round_ended bool matches 1 run return run function health:math/nullify

# Berserk dell'attaccante (tag summon.attacker, melee e abilità): incoming_damage * (100 + bonus) / 100
execute if entity @a[tag=summon.attacker,tag=powerup.berserk] store result score @s incoming_damage run compute entity @s integer health:damage/berserk

# Moltiplicatore overtime: incoming_damage * (100 + #overtime multiplier) / 100
execute store result score @s incoming_damage run compute entity @s integer health:damage/overtime

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

# Indicatore HP
function skills:auxiliary/summon/health_display

# Reset
data remove storage arenaproject:game_memory damageFeedback
scoreboard players reset @s melee_damage
scoreboard players reset @s ability_damage
scoreboard players reset @s incoming_damage

# Feedback custom dell'evocazione: skills:list/<abilityType>/<abilityName>/hit
execute at @s run function health:summon/hit with entity @s data
