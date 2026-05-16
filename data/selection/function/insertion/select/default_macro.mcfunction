## INFO
## Called by selection/select/default
## Inserimento abilità standard con le macro

# Inserimento dati dalla path "default"

# Offensiva
$execute if entity @s[tag=must_select.offensive] run data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills[0] set from storage arenaproject:ability_data skills.offensive[0]
execute store result score @s[tag=must_select.offensive] experience_cost run data get storage arenaproject:ability_data skills.offensive[0].abilityCost
tellraw @s[tag=must_select.offensive] [{"text":"   > ","color":"dark_gray","bold":true},{"storage":"arenaproject:ability_data","nbt":"skills.offensive[0].abilityDisplay","bold":false,"color":"gray"}]

# Utility
$execute if entity @s[tag=must_select.utility] run data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills[1] set from storage arenaproject:ability_data skills.utility[0]
execute store result score @s[tag=must_select.utility] cooldown.utility run data get storage arenaproject:ability_data skills.utility[0].abilityCooldown
tellraw @s[tag=must_select.utility] [{"text":"   > ","color":"dark_gray","bold":true},{"storage":"arenaproject:ability_data","nbt":"skills.utility[0].abilityDisplay","bold":false,"color":"gray"}]

# Support
$execute if entity @s run data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills[2] set from storage arenaproject:ability_data skills.support[0]
execute store result score @s[tag=must_select.support] cooldown.support run data get storage arenaproject:ability_data skills.support[0].abilityCooldown
tellraw @s[tag=must_select.support] [{"text":"   > ","color":"dark_gray","bold":true},{"storage":"arenaproject:ability_data","nbt":"skills.support[0].abilityDisplay","bold":false,"color":"gray"}]

# Ultimate
$execute if entity @s[tag=must_select.ultimate] run data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills[3] set from storage arenaproject:ability_data skills.ultimate[0]
execute store result score @s[tag=must_select.ultimate] cooldown.ultimate run data get storage arenaproject:ability_data skills.ultimate[0].abilityCooldown
tellraw @s[tag=must_select.ultimate] [{"text":"   > ","color":"dark_gray","bold":true},{"storage":"arenaproject:ability_data","nbt":"skills.ultimate[0].abilityDisplay","bold":false,"color":"gray"}]