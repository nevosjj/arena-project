############
# INFO
# CHIAMATA DA matchmaking:1v1/initiate
############

# Estrazione dei dati nella temporary di map_data:1v1 (1v1)
$data modify storage map_data:1v1 temporary merge from storage map_data:1v1 list[0].map[$(mapIndex)]