#############
# La funzione si occupa di imporre gli attributi giusti ai giocatori che entrano in partita.
#############

## Attributi non dinamici

# Attacco basso
execute as @a[tag=in_game] run attribute @s minecraft:attack_damage base set 0.00000001

## Attributi dinamici

# Knockback
$execute as @a[tag=in_game] run attribute @s minecraft:knockback_resistance base set $(knockbackResistance)

# Cuori giocatori
$execute as @a[tag=in_game] run attribute @s minecraft:max_health base set $(playerLives)