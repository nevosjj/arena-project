## INFO
# Called by root/ticks/tick

# Aumento timer
execute unless score @s experience_level matches 100.. run scoreboard players add @s experience_timer 1

# Controllo aumento energia
execute if score @s experience_timer >= @s experience_limit run function experience:gain

# Controllo limite
execute if score @s experience_level matches 101.. run function experience:limit