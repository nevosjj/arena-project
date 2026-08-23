##########################
## La funzione fa partire l'animazione della morte
##########################

$summon mannequin ~ ~ ~ {profile:"$(profileName)",data:{death_animation:"$(death_animation)",ID:$(ID)},Tags:["death_mannequin","new_death_mannequin"],NoGravity:1b,Invulnerable:1b}
scoreboard players set @e[type=mannequin,tag=death_mannequin,limit=1,sort=nearest,distance=..16,tag=new_death_mannequin] animation 60
tag @e[type=mannequin,tag=new_death_mannequin,limit=1,sort=nearest,distance=..16] remove new_death_mannequin