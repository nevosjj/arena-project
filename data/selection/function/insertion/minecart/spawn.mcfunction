#################################################
## Chiamato dalla funzione ticks:tick/minecart ##
#################################################

# Feedback
playsound block.trial_spawner.about_to_spawn_item ui @s ~ ~ ~ 10 0.8

# Spawn
summon chest_minecart ~ ~1 ~ \
    {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["selection_minecart","new_selection_minecart"]}

# Tag di accoppiamento
tag @s add player.select_request

# Applicazione stesso ID giocatore
execute as @e[type=chest_minecart,tag=new_selection_minecart,limit=1,sort=nearest,distance=..2] at @s run function selection:insertion/minecart/apply_id

# Rimozione tag accoppiamento
tag @s remove player.select_request