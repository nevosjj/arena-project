############
# INFO
# Uso: function skills:auxiliary/targeting/search_damage_single with entity @s data
# Esecutore e posizione: il finder
# Danneggia SOLO il nemico più vicino nel raggio (es. proiettili a bersaglio singolo)
############

# Selezione
function skills:auxiliary/targeting/select_enemies_single with entity @s data

# Danno
execute as @a[tag=target.selected] run function skills:auxiliary/targeting/apply_damage with storage arenaproject:game_memory targetSource

# Chiusura
function skills:auxiliary/targeting/clear
