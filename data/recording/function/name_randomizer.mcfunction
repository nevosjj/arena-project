## Decidi nome casuale creando array di array.
## Controlla gli indici per selezionare i nomi

# Creazione pool dei nomi
data modify storage match_recorder:randomizer pool \
    set value \
    { \
    names: \
        ["battle", "rebuttal", "conflict", "showdown", "onslaught", "clash",], \
    adjectives: \
        ["Epic ", "Unbelievable ", "Decisive ", "Chaotic ", "Ultimate ", "Forgotten "],\
    flavours: \
        [" between warriors! "," made in Nether! "," for a single coin. "," for the glory!! ",", the final battle! ", ", where losers are idiots.. "],\
    }

# Randomizzazione indici
execute store result storage match_recorder:randomizer indexes.name int 1.0 run random value 0..5
execute store result storage match_recorder:randomizer indexes.adjective int 1.0 run random value 0..5
execute store result storage match_recorder:randomizer indexes.flavour int 1.0 run random value 0..5
execute store result storage match_recorder:randomizer indexes.matchID int 1.0 run random value 00001..99999

# Chiamata di funzione
function recording:declare_name with storage match_recorder:randomizer indexes

# Pulizia pool
data remove storage match_recorder:randomizer pool