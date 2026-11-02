#######################################################
## Chiamata da skills:auxiliary/targeting/apply_heal ##
## Esecutore e posizione: l'alleato curato           ##
#######################################################

# Uccisione del proiettile (la fonte della ricerca)
execute as @e[type=item,tag=target.source,distance=..3,limit=1] run function skills:auxiliary/summon/kill

# Feedback
particle heart ~ ~2 ~ 0.4 0.2 0.4 0.05 3 force
playsound entity.generic.eat player @a ~ ~ ~ 1.5 0.8
