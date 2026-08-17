## Funzione che mette le statistiche di ogni giocatore, elenco sotto:

# Melee inflitti
$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"Melee inflitti: ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(melee_done)","color":"gold"}]}

# Miglior combo
$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"Miglior combo: ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(best_combo)","color":"red"}]}

# Cure ricevute
$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"Cure ricevute: ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(heal_received)","color":"green"}]}

# Danni decrementati
$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"Danni decrementati: ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(damage_halved)","color":"aqua"}]}

# Danni ricevuti
$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"Danni ricevuti: ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(damage_received)","color":"dark_aqua"}]}
