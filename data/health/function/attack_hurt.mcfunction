# Rimozione advancement
advancement revoke @s only health:attack

# Assegnazione tags
tag @s add damage.victim
execute on attacker run tag @s add damage.dealer

# Assegnazione esperienza per l'attacco
execute as @a[tag=damage.dealer] run function experience:attack

# Operazione
scoreboard players operation @a[tag=damage.victim] melee_damage = @a[tag=damage.dealer] stat.attack

# Accumulo score a chi ha attaccato
execute on attacker run scoreboard players operation @s poststat.melee_inflicted += @s stat.attack

# Chiamata funzione
function health:melee_damage

# Reset tags
execute on attacker run tag @s remove damage.dealer
tag @s remove damage.victim