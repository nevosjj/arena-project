# Piazziamento struttura dalla macro

$function match:map_list/$(mapStructure)

# debug
$say $(mapName)

# Inserimento nello storage match_recorder il nome della mappa.

$data modify storage match_recorder:data actual_match.map set value "$(mapName)"