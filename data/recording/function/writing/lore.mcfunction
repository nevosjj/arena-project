# Inserisci la lore
$data modify block 9 -55 39 Items[{Slot:$(chestIndex)b}].components."minecraft:lore" set value [ \
    {"text":""},\
    {"text":"Durata:","italic":false,"color":"gray"},{"text":"  └───$(duration)","italic":false,"color":"yellow"},\
    {"text":"Mappa:","italic":false,"color":"gray"},{"text":"  └───$(map)","italic":false,"color":"white"},\
    {"text":"Modalità:","italic":false,"color":"gray"},{"text":"  └───$(type)","italic":false,"color":"red"}\
]