###############################################################################
## Chiamata da skills:auxiliary/targeting/apply_damage                       ##
## Esecutore: la hitbox colpita                                              ##
## Macro: storage arenaproject:game_memory targetSource (playerName)         ##
## Come health:types/ability_damage, senza notifica "!!!" né damage vanilla. ##
## La morte la controlla apply_damage DOPO la damage_consequence.            ##
###############################################################################

# Attaccante (statistiche post-partita in health:summon/incoming_damage)
$tag $(playerName) add summon.attacker

# Flusso danni
scoreboard players operation @s incoming_damage += @s ability_damage
function health:summon/incoming_damage

# Pulizia
tag @a[tag=summon.attacker] remove summon.attacker
