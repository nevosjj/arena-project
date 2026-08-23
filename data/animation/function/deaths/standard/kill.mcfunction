# Feedback
playsound entity.villager.death player @a ~ ~ ~ 2 1
particle firework ~ ~1 ~ 0 0 0 1 25 force

# Controlla chi è morto
function animation:deaths/general/end with entity @s data

# Uccisione
kill @s