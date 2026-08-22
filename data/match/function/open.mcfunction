# Apertura cancelli con le macro

tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Porte aperte!","color":"green","bold":false}]
execute as @a at @s run playsound block.iron_door.open voice @s ~ ~ ~ 10 0.9
$fill $(bars1) air replace #bars
$fill $(bars2) air replace #bars