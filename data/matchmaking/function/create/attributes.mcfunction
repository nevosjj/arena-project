####################################################
## La funzione si occupa di imporre gli attributi ##
## giusti ai giocatori che entrano in partita.    ##
####################################################

## Attributi non dinamici

# Attacco basso
attribute @s minecraft:attack_damage base set 0.00000001

# Interazioni con le entità normali fuori dai round (selezione, pause tra i round)
# Va a 0.0 a inizio round (match:events/end_selection) e torna a 3.0 a fine round (match:events/round_pause)
attribute @s minecraft:entity_interaction_range base set 3.0

## Attributi dinamici

# Knockback
$attribute @s minecraft:knockback_resistance base set $(knockbackResistance)

# Cuori giocatori
$attribute @s minecraft:max_health base set $(playerLives)

# Effetto di guarigione
effect give @s regeneration 10 5 true