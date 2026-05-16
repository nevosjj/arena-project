data remove entity @e[type=interaction,tag=matchmaking.1v1,limit=1,sort=nearest,distance=..16] interaction
tellraw @s [{"text":"MATCHMAKING","color":"gold","bold":true},{"text":" >> ","color":"gray","bold":false},{"text":"Sei già dentro la coda.","color":"red","bold":false}]
playsound block.note_block.snare ui @s ~ ~ ~ 1 1.5