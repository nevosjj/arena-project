# Creazione orologio di inizio partita.
stopwatch create match:queue

# Feedback.
tellraw @a [{"text":"MATCHMAKING","color":"gold","bold":true},{"text":" >> ","color":"gray","bold":false},{"text":"Quota 1v1 Raggiunta! Inizio in 3s..","color":"green","bold":false}]
playsound block.note_block.bell ui @a ~ ~ ~ 1 0

# Reset.
scoreboard players reset @s counter

# Aggiunta tag.
tag @s add queueing