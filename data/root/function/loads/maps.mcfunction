tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Storage","color":"#f5ace5","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Dati mappe...","color":"gray"}]

data modify storage arenaproject:map_data modes set value [ \
    { \
        modeName: "1v1", \
        map: [ \
            { \
                mapName: "Tempio dell'Aether", \
                mapID: 0, \
                mapItem: "minecraft:quartz_pillar", \
                mapOvertime: 180, \
                powerupTimer: 45, \
                mapRounds: 1,\
                mapStructure: "aether",\
                spawn1: "139 -27 -9 90 0", \
                spawn2: "41 -27 9 -90 0", \
                bars1: "44 -27 5 44 -23 13",\
                bars2: "136 -27 -5 136 -23 -13",\
                powerup: "90 -28 0",\
            }, \
            { \
                mapName: "Laboratorio dei Test", \
                mapID: 1, \
                mapItem: "minecraft:diamond", \
                mapOvertime: 180, \
                powerupTimer: 45, \
                mapRounds: 1,\
                mapStructure: "test",\
                spawn1: "136 -29 31 90 0", \
                spawn2: "94 -29 4 -90 0", \
                bars1: "134 -29 34 134 -26 28",\
                bars2: "98 -29 1 98 -26 7",\
            } \
        ] \
    }, \
    { \
        modeName: "2v2", \
        map: [ \
            { \
                mapName: "Tempio dell'Aether", \
                mapID: 0, \
                mapItem: "minecraft:quartz_pillar", \
                mapOvertime: 180, \
                powerupTimer: 45, \
                mapRounds: 1,\
                mapStructure: "aether",\
                spawn1: "139 -27 -9 90 0", \
                spawn2: "41 -27 9 -90 0", \
                bars1: "44 -27 5 44 -23 13",\
                bars2: "136 -27 -5 136 -23 -13",\
                powerup: "90 -28 0",\
            }, \
            { \
                mapName: "Egitto", \
                mapID: 1, \
                spawn1_x: 0, \
                spawn1_y: 0, \
                spawn1_z: 0, \
                spawn2_x: 0, \
                spawn2_y: 0, \
                spawn2_z: 0 \
            } \
        ] \
    } \
]
