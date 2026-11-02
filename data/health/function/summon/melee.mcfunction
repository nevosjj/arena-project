#########################################################################################
## Chiamata da skills:auxiliary/summon/tick                                            ##
## Esecutore e posizione: la interaction colpita (ha l'NBT "attack")                   ##
## Colpo valido solo se: round in corso, iframes finiti, attaccante nemico in partita. ##
#########################################################################################

# Attaccante valido: in partita e di un'altra squadra
scoreboard players operation #summon teamID = @s teamID
execute on attacker if entity @s[tag=in_game] unless score @s teamID = #summon teamID run tag @s add summon.attacker
scoreboard players reset #summon teamID

# Colpo (successo)
execute unless score #round_ended bool matches 1 unless score @s summon.iframes matches 1.. if entity @a[tag=summon.attacker] run function health:summon/melee_hit

# Pulizia
tag @a[tag=summon.attacker] remove summon.attacker
data remove entity @s attack
