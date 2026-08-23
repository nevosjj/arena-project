# Inserimento cancelli con le macro

tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Porte chiuse.","color":"green","bold":false}]
execute as @a at @s run playsound block.iron_door.close voice @s ~ ~ ~ 10 0.9
$fill $(bars1) $(mapBars) replace air
$fill $(bars2) $(mapBars) replace air