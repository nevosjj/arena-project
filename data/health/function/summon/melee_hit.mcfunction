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

# Iframes
scoreboard players set @s summon.iframes 10

# Feedback sonoro
playsound entity.player.small_fall player @a ~ ~ ~ 1 1.2

# Flusso danni
function health:summon/incoming_damage

# Morte
function health:summon/death_check
