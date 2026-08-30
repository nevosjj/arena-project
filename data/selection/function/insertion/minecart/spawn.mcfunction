#################################################
## Chiamato dalla funzione ticks:tick/minecart ##
#################################################

# Feedback
playsound item.wolf_armor.repair ui @s ~ ~ ~ 10 0.8

# Spawn
summon block_display ~ ~ ~ {shadow_strength:0f,teleport_duration:1,Tags:["selection_block_display","new_selection_block_display"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["selection_minecart","new_selection_minecart"],CustomNameVisible:0b,CustomName:{"bold":true,"color":"black","italic":false,"text":"Menù di selezione"}}],block_state:{Name:"minecraft:air"}}

# Tag di accoppiamento
tag @s add player.select_request

# Applicazione stesso ID giocatore
execute as @e[type=block_display,tag=new_selection_block_display,limit=1,sort=nearest,distance=..2] at @s run function selection:insertion/minecart/apply_id

# Rimozione tag accoppiamento
tag @s remove player.select_request