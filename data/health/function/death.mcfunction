# Feedback audio
playsound entity.blaze.death player @a ~ ~ ~ 2 2

# Feedback testo
tellraw @a [\
    {"atlas":"minecraft:gui","sprite":"mob_effect/bad_omen"},{"text":" "},\
    {"selector":"@s","color":"dark_red"},\
    {"text":" è morto!","color":"gray"}]

# Operazione
scoreboard players operation @s stat.current_health = @s stat.max_health
scoreboard players add @s death 1
function match:death