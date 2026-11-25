# Reset punteggio
scoreboard players reset @s duration.offensive
scoreboard players reset @s duration.offensive2
scoreboard players reset @s counter.offensive
scoreboard players reset @s counter.offensive2

# Visuale della fine
summon marker ~ ~1 ~ {Tags:["flame_sword.end_visual"]}
scoreboard players set @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.end_visual] temp 0
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.end_visual] at @s run function skills:list/offensive/flame_sword/visual_smoke

# Portata normale della spada
function skills:auxiliary/sword/give {reach:3.0}

# Rimozione tag
tag @s remove flame_sword.energy
tag @s remove flame_sword.ring_skip

# Feedback audio
playsound entity.blaze.death ambient @a ~ ~ ~ 2 1.55