# Ottieni ID giocatore e dati abilità
scoreboard players operation @s ID = @p ID
execute store result entity @s data.ID int 1.0 run scoreboard players get @s ID

# Applica la cura nella sua posizione con i dati appena acquisiti
function skills:list/support/bone_shield/apply_on_hit with entity @s data