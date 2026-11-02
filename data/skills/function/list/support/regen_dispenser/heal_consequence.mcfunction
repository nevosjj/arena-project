#######################################################
## Chiamata da skills:auxiliary/targeting/apply_heal ##
## Esecutore e posizione: l'alleato curato           ##
#######################################################

# Uccisione del proiettile (la fonte della ricerca)
execute as @e[type=item,tag=target.source,distance=..3,limit=1] run function skills:auxiliary/summon/kill

# Feedback
particle heart ~ ~1 ~ 0.4 0.4 0.4 0.05 4 force
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 10 force
playsound entity.generic.eat player @a ~ ~ ~ 1.5 1.2
playsound entity.player.levelup player @a ~ ~ ~ 0.6 1.8
