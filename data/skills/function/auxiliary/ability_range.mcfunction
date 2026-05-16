# Caso base (Angolo 12, ruota 30 volte per formare un cerchio di 360 gradi)
execute if score @s range matches 30.. run return run kill @s

# Aumento punteggio
scoreboard players add @s range 1

# Rotazione
tp @s ~ ~ ~ ~12 ~

# Particella
$particle $(particles) ^ ^ ^$(distance) 0 0 0 0 1 force

# Ricorsione
execute at @s run function skills:auxiliary/ability_range with entity @s data