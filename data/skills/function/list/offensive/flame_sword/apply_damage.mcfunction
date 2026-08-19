# Reset timer della spada di fiamma
scoreboard players operation @a[tag=damage.dealer] duration.offensive = @a[tag=damage.dealer] duration.offensive2
# Aumento danni
scoreboard players operation @a[tag=damage.victim] melee_damage += @a[tag=damage.dealer] stat.combo
# Tag bezier
tag @a[tag=damage.victim] add flame_sword.p0
tag @a[tag=damage.dealer] add flame_sword.p2
# Inizializza
function skills:list/offensive/flame_sword/get_points
# Feedback
execute at @a[tag=damage.victim] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 2 0.75
# Aumento limite colpo
scoreboard players add @s counter.offensive4 1
# Controllo raggiunta limite colpi
execute if score @s counter.offensive3 = @s counter.offensive4 run function skills:list/offensive/flame_sword/reset