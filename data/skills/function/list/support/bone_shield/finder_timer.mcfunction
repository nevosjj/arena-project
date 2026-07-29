# Ottieni ID giocatore e dati abilità
scoreboard players operation @s ID = @p ID
execute store result entity @s data.ID int 1.0 run scoreboard players get @s ID

# Applica la cura nella sua posizione con i dati appena acquisiti
execute as @e[type=player,limit=1,sort=nearest,distance=..2] at @s run function skills:list/support/bone_shield/reset_timer with entity @e[type=marker,limit=1,sort=nearest,tag=bone_shield.ender,distance=..2] data