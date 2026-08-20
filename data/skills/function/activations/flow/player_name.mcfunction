# Inserimento smeraldo con nome
loot replace entity @s enderchest.0 loot skills:player_name

# Inserimento nello storage temp
data modify storage arenaproject:game_memory temporary.activation.playerName set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name