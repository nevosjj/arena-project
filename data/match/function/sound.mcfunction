execute as @a at @s run playsound block.lever.click ui @s ~ ~ ~ 1 1.9
stopwatch restart match:sound
scoreboard players remove #match counter 1
execute store result bossbar match:timer value run scoreboard players get #match counter

execute if score #match counter matches 5 run function match:low_timer