#############################
##
#############################

# Feedback sonoro
execute as @a at @s run playsound block.lever.click ui @s ~ ~ ~ 1 1.9

# Reset
stopwatch restart match:sound

# Rimozione --timer
scoreboard players remove #match counter 1

# Aggiornamento timer bossbar
execute store result bossbar match:timer value run scoreboard players get #match counter

# Check che il timer non sia a 5 secondi, forzando la selezione randomica
execute if score #match counter matches 5 run function match:events/low_timer