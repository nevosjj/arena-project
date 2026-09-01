# Reset timer della spada di fiamma
scoreboard players operation @a[tag=damage.dealer] duration.offensive = @a[tag=damage.dealer] duration.offensive2

# Aumento danni
scoreboard players operation @a[tag=damage.victim] melee_damage += @a[tag=damage.dealer] stat.combo

# Tag bezier
tag @a[tag=damage.victim] add flame_sword.p0
tag @a[tag=damage.dealer] add flame_sword.p2

# Visual fuoco
summon marker ~ ~1 ~ {Tags:["flame_sword.hit_visual"]}
scoreboard players set @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.hit_visual] temp 0
execute as @e[type=marker,limit=1,sort=nearest,distance=..2,tag=flame_sword.hit_visual] at @s run function skills:list/offensive/flame_sword/visual_fire

# Visuale bezier (inizializza)
function skills:list/offensive/flame_sword/get_points

# Feedback
execute at @a[tag=damage.victim] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 2 0.75

# Aumento limite colpo
scoreboard players remove @s counter.offensive2 1

# Controllo raggiunta limite colpi
execute if score @s counter.offensive2 matches 0 at @s run function skills:list/offensive/flame_sword/reset