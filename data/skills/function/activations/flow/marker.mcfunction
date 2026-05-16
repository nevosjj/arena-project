############
# INFO
# CHIAMATA DA skills/activations/macro_call
############

# Evoca marker che contiene le informazioni
$summon marker ~ ~1 ~ {Tags:["new_marker","$(abilityName).marker"]}

# Fai partire la funzione dai dati del giocatore giusto
execute as @e[type=marker,tag=new_marker,distance=..2,limit=1,sort=nearest] run function skills:activations/flow/assign_data with storage arenaproject:game_memory temporary.activation

# Ricerca funzione dalla macro temporanea
$function skills:list/$(abilityType)/$(abilityName)/init

# Cleanup
data remove storage arenaproject:game_memory temporary