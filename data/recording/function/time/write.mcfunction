# Scrittura
$data modify storage match_recorder:data actual_match.duration set value "$(minutes)m$(seconds)s"

# Pulizia temptime
data remove storage match_recorder:data temptime