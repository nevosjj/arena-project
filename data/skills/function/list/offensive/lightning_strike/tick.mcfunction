# temp++
scoreboard players add @s temp 1

# Controllo
$execute if score @s temp matches $(charge) run function skills:list/offensive/lightning_strike/end with entity @s data

# Feedback sonoro
function skills:auxiliary/sound with entity @s data

# Rotazione
$tp @s ~ ~ ~ ~$(rotation) ~

# Particella
$particle instant_effect{color:[0.87,0.8,0.5],power:2.0} ^ ^0.5 ^$(range) 0 0 0 0 1 force
$particle small_gust ^ ^0.5 ^$(range) 0 0 0 0 1 force