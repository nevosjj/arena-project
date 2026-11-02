##############################################################################
## Chiamata dalle abilità di cura (es. golden_apple)                        ##
## Uso: function skills:auxiliary/targeting/search_heal with entity @s data ##
## Esecutore e posizione: il finder                                         ##
## Cura TUTTI gli alleati nel raggio (caster incluso).                      ##
##############################################################################

# Selezione
function skills:auxiliary/targeting/select_allies with entity @s data

# Cura
execute as @a[tag=target.selected] run function skills:auxiliary/targeting/apply_heal with storage arenaproject:game_memory targetSource

# Chiusura
function skills:auxiliary/targeting/clear
