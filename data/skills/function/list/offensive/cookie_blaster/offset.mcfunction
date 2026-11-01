# Spread casuale proiettili
$execute store result storage arenaproject:game_memory cookieTemp.yaw float 0.1 run random value -$(spread)0..$(spread)0
$execute store result storage arenaproject:game_memory cookieTemp.pitch float 0.1 run random value -$(spread)0..$(spread)0
data modify storage arenaproject:game_memory cookieTemp.motion set from entity @s data.motion