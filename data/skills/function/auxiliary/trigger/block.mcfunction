$scoreboard players set @s condition.$(skillTYPE_txt) 1
data remove storage arenaproject:game_memory temporary.condition
tellraw @s [{"text":"Non c'è nessun bersaglio!","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0