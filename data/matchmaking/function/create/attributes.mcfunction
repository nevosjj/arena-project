####################################################
## La funzione si occupa di imporre gli attributi ##
## giusti ai giocatori che entrano in partita.    ##
####################################################

## Attributi non dinamici

# Attacco basso
attribute @s minecraft:attack_damage base set 0.00000001

# Niente interazioni con le entità (le interaction delle evocazioni bloccavano la guardia della spada)
# La portata degli attacchi viene da attack_range sugli oggetti della hotbar (skills:auxiliary/sword/give)
attribute @s minecraft:entity_interaction_range base set 0.0

## Attributi dinamici

# Knockback
$attribute @s minecraft:knockback_resistance base set $(knockbackResistance)

# Cuori giocatori
$attribute @s minecraft:max_health base set $(playerLives)

# Effetto di guarigione
effect give @s regeneration 10 5 true