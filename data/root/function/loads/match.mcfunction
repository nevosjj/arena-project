tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Storage","color":"#f5ace5","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Dati partite...","color":"gray"}]

data modify storage arenaproject:match_data info set value {\
    1v1: {\
            expGain:7,\
        },\
    2v2: {\
            powerupTimer:50,\
            rounds: 5,\
        },\
    FFA: {\
            powerupTimer: 25,\
            lives: 1,\
        },\
    custom: {\
            powerupTimer: BLANK,\
            rounds: BLANK,\
            mode: BLANK,\
            }\
}