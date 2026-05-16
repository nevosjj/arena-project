# Ricerca skillID del giocatore per capire, tra i tipi di abilità, che abilità specifica sta usando.
# Come macro vengono usati dalla temp l'ID del giocatore e il suo skillTYPE

$execute store result storage arenaproject:game_memory temporary.activation.skillID int 1 run data get storage arenaproject:game_memory players[{ID:$(ID)}].skills[$(skillTYPE_num)].abilityID