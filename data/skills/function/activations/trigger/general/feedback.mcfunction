tellraw @s [{"text":"Non c'è nessun bersaglio!","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0
$scoreboard players set @s antispam_target.$(skillTYPE_txt) 10