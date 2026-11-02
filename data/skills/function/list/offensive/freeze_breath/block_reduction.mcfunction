data modify entity @s data.power set from entity @s data.powerDown
tag @s add breath.blocked

# I bersagli sono selezionati una volta sola: il danno ridotto va aggiornato anche nella fonte
execute if data storage arenaproject:game_memory targetSource run data modify storage arenaproject:game_memory targetSource.power set from entity @s data.power
