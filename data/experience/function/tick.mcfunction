## INFO
# Called by root/ticks/tick

# Aumento timer (anche a 100: experience:gain conta lo scarto)
scoreboard players add @s experience_timer 1

# Controllo aumento energia
execute if score @s experience_timer >= @s experience_limit run function experience:gain

# Controllo limite
execute if score @s experience_level matches 101.. run function experience:limit