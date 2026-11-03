######################################################################################
## Chiamata da health:summon/melee                                                  ##
## Esecutore e posizione: la hitbox colpita                                         ##
## Danno = stat.attack dell'attaccante, NESSUN bonus (energia, combo, flame_sword). ##
######################################################################################

# Danno
scoreboard players operation @s melee_damage = @a[tag=summon.attacker,limit=1] stat.attack
scoreboard players operation @s incoming_damage += @s melee_damage

# Statistica post-partita dell'attaccante
execute as @a[tag=summon.attacker] run scoreboard players operation @s poststat.melee_inflicted_summon += @s stat.attack
execute as @a[tag=summon.attacker] run scoreboard players operation @s poststat.melee_inflicted += @s stat.attack

# Iframes
scoreboard players set @s summon.iframes 10

# Flusso danni
function health:summon/incoming_damage

# Controllo morte
execute if score @s summon.health matches ..0 run function health:summon/death