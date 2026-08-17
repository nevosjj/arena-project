# Rimozione advancement
advancement revoke @s only health:attack

# Assegnazione tags
tag @s add damage.victim
execute on attacker run tag @s add damage.dealer

# Assegnazione esperienza per l'attacco
execute as @a[tag=damage.dealer] run function experience:attack

# Aumento della combo
execute on attacker run scoreboard players add @s stat.combo 1

# Annullamento combo
execute on attacker if score @s stat.combo > @s poststat.best_combo run scoreboard players operation @s poststat.best_combo = @s stat.combo
scoreboard players set @s stat.combo 0

# Ricevimento danno spada di fuoco
execute if entity @s[tag=flame_sword.energy] run function skills:list/offensive/flame_sword/get_damage

# Attivazione spada di fuoco
execute if entity @e[type=player,tag=damage.dealer,tag=flame_sword.energy] run function skills:list/offensive/flame_sword/apply_damage

# Operazione
scoreboard players operation @a[tag=damage.victim] melee_damage += @a[tag=damage.dealer] stat.attack

# Accumulo score a chi ha attaccato
execute on attacker run scoreboard players operation @s poststat.melee_inflicted += @s stat.attack

# Chiamata funzione
function health:melee_damage

# Reset tags
execute on attacker run tag @s remove damage.dealer
tag @s remove damage.victim