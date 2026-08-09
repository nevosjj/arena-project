# Inserimento dati
# Manteniamo il campo index già salvato e aggiungiamo solo i valori necessari.
$data modify storage arenaproject:selection temporary.item set from storage arenaproject:selection temporary.skills[$(index)].display.item
$data modify storage arenaproject:selection temporary.name set from storage arenaproject:selection temporary.skills[$(index)].display.name
$data modify storage arenaproject:selection temporary.lore set from storage arenaproject:selection temporary.skills[$(index)].display.lore
$data modify storage arenaproject:selection temporary.abilityType set from storage arenaproject:selection temporary.skills[$(index)].meta.abilityType