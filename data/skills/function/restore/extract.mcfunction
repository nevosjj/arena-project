# Estrazione informazioni abilità da mettere nell'oggetto ristorato

$data modify storage arenaproject:game_memory temporary.restore.itemName set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skillTYPE_txt).display.name
$data modify storage arenaproject:game_memory temporary.restore.itemDisplay set from storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skillTYPE_txt).display.item