## Funzione che mette le informazioni di equipaggiamento del giocatore, elenco sotto:
# Abilità offensiva
# Support
# Utility
# Ultimate

$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"│  │  ├─── ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(offensive)","color":"red"}]}

$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"│  │  └─── ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(support)","color":"green"}]}

$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"│  └──── ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(utility)","color":"yellow"}]}

$data modify block 9 -55 39 Items[{Slot:$(playerIndexChest)b}].components."minecraft:lore" append value {"text":"└───── ","color":"gray","bold":false,"italic":false,"extra":[{"text":"$(ultimate)","color":"gold"}]}