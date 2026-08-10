# Inserisci i dati dell'abilità attivata nel marker abilità dalla lista abilità tramite indici
# dati tecnici
$data modify entity @s data merge from storage ability_data:$(skillTYPE_txt) skills[$(skillIndex)].technical
$data modify entity @s data merge from storage ability_data:$(skillTYPE_txt) skills[$(skillIndex)].display.name
$data modify entity @s data merge from storage ability_data:$(skillTYPE_txt) skills[$(skillIndex)].meta

# Inserisci i dati dell'attivatore (ID, teamID) dai dati temp conservati
data modify entity @s data merge from storage arenaproject:game_memory temporary.activation

# Inserisci negli score gli ID giusti per far ei calcoli dei bersagli
execute store result score @s ID run data get entity @s data.ID
execute store result score @s teamID run data get entity @s data.teamID

# Rimozione tag
tag @s remove new_marker