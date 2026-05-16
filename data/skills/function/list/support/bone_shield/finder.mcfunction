# Ottieni ID giocatore e dati abilità
scoreboard players operation @s ID = @p ID
data modify entity @s data.abilityPower set from storage arenaproject:ability_data skills.support[0].abilityPower
execute store result entity @s data.ID int 1.0 run scoreboard players get @s ID

# Applica la cura nella sua posizione con i dati appena acquisiti
function skills:list/support/bone_shield/apply_heal with entity @s data