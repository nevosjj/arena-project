#########################################################################################
## Chiamata da skills:auxiliary/summon/tick                                            ##
## Esecutore e posizione: l'evocazione colpita (ha l'NBT "attack")                     ##
## Colpo valido solo se: round in corso, iframes finiti, attaccante nemico in partita. ##
#########################################################################################

# Attaccante valido: in partita e di un'altra squadra.
# La hitbox si marca con un tag e si ritrova a distance 0 ("execute on" non cambia posizione)
tag @s add summon.victim
execute on attacker if entity @s[tag=in_game] unless score @s teamID = @e[type=interaction,tag=summon.victim,distance=..0.1,limit=1] teamID run tag @s add summon.attacker
tag @s remove summon.victim

# Colpo (successo)
execute unless score #round_ended bool matches 1 unless score @s summon.iframes matches 1.. if entity @a[tag=summon.attacker] run function health:summon/melee_hit

# Pulizia
tag @a[tag=summon.attacker] remove summon.attacker
data remove entity @s attack
