## Operazione moltiplicatori
# Positivi
# Negativi

# Trasformazione danni
scoreboard players operation @s incoming_damage += @s ability_damage

# Feedback
$data modify storage arenaproject:game_memory damageFeedback.abilityDisplay set value "$(abilityDisplay)"
$data modify storage arenaproject:game_memory damageFeedback.playerName set value "$(playerName)"

# Funzione danni
function health:incoming_damage with storage arenaproject:game_memory damageFeedback