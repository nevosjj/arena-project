##########################
# Chiamata da: recording:name_randomizer
##########################
# La funzione si occupa, una volta presi come argomenti gli indici, di scorrere gli array per decidere il nome della partita.

# Estrai temporaneamente i testi dagli array del pool usando gli indici della macro
$data modify storage match_recorder:randomizer temp.adjective set from storage match_recorder:randomizer pool.adjectives[$(adjective)]
$data modify storage match_recorder:randomizer temp.name set from storage match_recorder:randomizer pool.names[$(name)]
$data modify storage match_recorder:randomizer temp.flavour set from storage match_recorder:randomizer pool.flavours[$(flavour)]
$data modify storage match_recorder:randomizer temp.matchID set value "$(matchID)"

# Unisci tutte le stringhe estratte e il numero ID direttamente dentro la stringa finale
function recording:actions/merge_name with storage match_recorder:randomizer temp

# Pulizia indici
data remove storage match_recorder:randomizer indexes