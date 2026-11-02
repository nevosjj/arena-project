#######################################################################################
## Chiamata dai proiettili a bersaglio singolo (es. cookie_blaster)                  ##
## Uso: function skills:auxiliary/targeting/search_damage_single with entity @s data ##
## Esecutore e posizione: il finder                                                  ##
## Danneggia SOLO il nemico più vicino nel raggio.                                   ##
#######################################################################################

# Selezione
function skills:auxiliary/targeting/select_enemies_single with entity @s data

# Danno
$execute as @e[tag=target.selected,distance=..$(range)] run function skills:auxiliary/targeting/apply_damage with storage arenaproject:game_memory targetSource

# Chiusura
function skills:auxiliary/targeting/clear
