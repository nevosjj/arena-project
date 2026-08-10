# Ottenimento proiettili da usare
execute store result score @s temp run data get entity @s data.count

# Inizio ricorsione
execute at @s positioned ^ ^0.6 ^-0.3 run function skills:list/offensive/cookie_blaster/recursive with entity @s data