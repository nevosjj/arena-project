#############
# La funzione si occupa di imporre gli attributi giusti ai giocatori che entrano in partita.
#############

## Attributi non dinamici

# Attacco basso
attribute @s minecraft:attack_damage base set 0.00000001

## Attributi dinamici

# Knockback
$attribute @s minecraft:knockback_resistance base set $(knockbackResistance)

# Cuori giocatori
$attribute @s minecraft:max_health base set $(playerLives)

# Effetto di guarigione
effect give @s regeneration 10 5 true