############
# INFO
# CHIAMATA DA matchmaking:1v1/initiate
############

# Estrazione dei dati nella temporary di arenaproject:map_data (1v1)
$data modify storage arenaproject:map_data temporary merge from storage arenaproject:map_data modes[0].map[$(mapIndex)]