# Reset skill
$data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills set value [{},{},{},{}]

# Feedback
tellraw @s {"text":"Skill resettate","color":"red"}