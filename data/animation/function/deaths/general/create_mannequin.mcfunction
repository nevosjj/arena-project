##########################
## La funzione fa partire l'animazione della morte
##########################

# Tag dinamico
$tag @s add animation.loser_$(ID)

# Evocazione
$summon mannequin ~ ~ ~ {profile:"$(profileName)",data:{death_animation:"$(death_animation)",ID:$(ID)},Tags:["death_mannequin","new_death_mannequin"],NoGravity:1b,Invulnerable:1b}

# Setup manichino
execute as @e[type=mannequin,tag=death_mannequin,limit=1,sort=nearest,distance=..16,tag=new_death_mannequin] run function animation:deaths/general/tick_eligible