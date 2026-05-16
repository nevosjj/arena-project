# Feedback entry (debug)

tellraw @a[tag=debug] [\
  {"text":"\n>>> ","color":"red","bold":true},\
  {"text":"Inserisco ","color":"gray","bold":false},\
  {"storage":"arenaproject:ability_data","nbt":"temporary[-1].abilityDisplay","color":"dark_purple","bold":false},\
  {"text":" slot ","color":"gray","bold":false},\
  {"storage":"arenaproject:ability_data","nbt":"temporary[-1].abilityID","color":"dark_purple","bold":false}\
]

# Inserimento oggetto
function selection:insertion/movements/item with storage arenaproject:ability_data temporary[-1]

# Rimozione
data remove storage arenaproject:ability_data temporary[-1]

# Se ci sono altre entry continua
execute if data storage arenaproject:ability_data temporary[-1] at @s run function selection:insertion/movements/backwards
execute unless data storage arenaproject:ability_data temporary[-1] at @s run function selection:insertion/movements/end