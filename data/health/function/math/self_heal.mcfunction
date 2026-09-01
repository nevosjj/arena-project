# Operazione
scoreboard players operation @s stat.current_health += @s incoming_heal

# Non superare il limite
execute if score @s stat.current_health > @s stat.max_health run scoreboard players operation @s stat.current_health = @s stat.max_health

# Reset
scoreboard players reset @s incoming_heal