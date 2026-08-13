## INFO
## Called by match/low_timer
## Oppure se un giocatore decide di fare un random mix di abilità

# Pulizia
clear @s
function selection:insertion/minecart/kill

# Feedback
tellraw @s [{"text":"AVVERTENZA","color":"red","bold":false}, \
    {"text":" > ","color":"dark_gray","bold":true}, \
        {"text":" Risultati abilità casuali:","color":"gray","bold":false}]

# Offensiva
data modify storage arenaproject:game_memory temporary.randomSelection.abilityType set value "offensive"
execute if entity @s[tag=must_select.offensive] run function selection:insertion/select/random/pick_type

# Utility
data modify storage arenaproject:game_memory temporary.randomSelection.abilityType set value "utility"
execute if entity @s[tag=must_select.utility] run function selection:insertion/select/random/pick_type

# Support
data modify storage arenaproject:game_memory temporary.randomSelection.abilityType set value "support"
execute if entity @s[tag=must_select.support] run function selection:insertion/select/random/pick_type

# Ultimate
data modify storage arenaproject:game_memory temporary.randomSelection.abilityType set value "ultimate"
execute if entity @s[tag=must_select.ultimate] run function selection:insertion/select/random/pick_type

# Pulizia
scoreboard players reset #array_dim
data remove storage arenaproject:game_memory temporary