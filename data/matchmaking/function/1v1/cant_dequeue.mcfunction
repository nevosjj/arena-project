data remove entity @e[type=interaction,tag=matchmaking.1v1,limit=1,sort=nearest] attack
tellraw @s [{"text":"MATCHMAKING","color":"gold","bold":true},{"text":" >> ","color":"gray","bold":false},{"text":"Non puoi uscire dalla coda se non ne sei parte!","color":"red","bold":false}]
playsound block.note_block.didgeridoo ui @s ~ ~ ~ 1 0