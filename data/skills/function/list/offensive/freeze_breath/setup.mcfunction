#############################################################
## Chiamata da skills:list/offensive/freeze_breath/init    ##
## Esecutore e posizione: il marker | Rotazione: il caster ##
#############################################################

# Numero di passi (distance * 25: ogni passo avanza di 0.06, con 6 sono 150 passi)
execute store result score @s temp run data get entity @s data.distance
scoreboard players set @s temp2 25
scoreboard players operation @s temp *= @s temp2
scoreboard players set @s temp3 0

# Impostazione teamID
execute store result score @s teamID run data get entity @s data.teamID

# Il marker prende la visuale del caster (pitch compreso): l'asse della spirale è dove guardi
tp @s ~ ~ ~ ~ ~

# Direzione iniziale della particella nel piano ^sinistra ^su (scala 10000)
    # A destra e 18.43° in basso, come il vecchio marker "freeze.objective" a ^-3 ^ ^
scoreboard players set #freeze_breath temp -9487
scoreboard players set #freeze_breath temp2 -3162

# Costanti della rotazione di 7.5° a passo (scala 100000) e arrotondamento
scoreboard players set #freeze_breath temp3 99144
scoreboard players set #freeze_breath temp4 13053
scoreboard players set #freeze_breath temp5 100000
scoreboard players set #freeze_breath temp6 50000

# Selezione unica dei bersagli
    # Raggio che contiene l'intero cono: 0.06 * passi (asse) + 0.025 * passi (ultimo raggio)
execute store result entity @s data.range float 0.085 run scoreboard players get @s temp
function skills:auxiliary/targeting/select_enemies with entity @s data

# Ricorsione
execute at @s run function skills:list/offensive/freeze_breath/recursion

# Chiusura
function skills:auxiliary/targeting/clear
function skills:list/offensive/freeze_breath/end with entity @s data
