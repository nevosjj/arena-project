############
# INFO
# Uso: function skills:auxiliary/targeting/search_heal_single with entity @s data
# Esecutore e posizione: il finder
# Cura SOLO l'alleato più vicino nel raggio (caster incluso)
############

# Selezione
function skills:auxiliary/targeting/select_allies_single with entity @s data

# Cura
execute as @a[tag=target.selected] run function skills:auxiliary/targeting/apply_heal with storage arenaproject:game_memory targetSource

# Chiusura
function skills:auxiliary/targeting/clear
