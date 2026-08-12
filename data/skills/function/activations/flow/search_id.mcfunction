# Ricerca abilità del giocatore per capire, tra i tipi di abilità, che abilità specifica sta usando.

$execute store result storage arenaproject:game_memory temporary.activation.skillIndex int 1 run data get storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skillTYPE_txt).meta.dynamicIndex