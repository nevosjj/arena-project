############
# INFO
# Uso: function skills:auxiliary/targeting/search_damage with entity @s data
# Esecutore e posizione: il finder
# Danneggia TUTTI i nemici nel raggio
############

# Selezione
function skills:auxiliary/targeting/select_enemies with entity @s data

# Danno
execute as @a[tag=target.selected] run function skills:auxiliary/targeting/apply_damage with storage arenaproject:game_memory targetSource

# Chiusura
function skills:auxiliary/targeting/clear
