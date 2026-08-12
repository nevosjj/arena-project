## Operazione moltiplicatori
# Positivi
# Negativi

# Trasformazione danni
scoreboard players operation @s incoming_damage += @s melee_damage

# Immissione danni
data modify storage arenaproject:game_memory damageFeedback.abilitySource set value "null"
data modify storage arenaproject:game_memory damageFeedback.playerName set value "null"

# Funzione danni
function health:incoming_damage with storage arenaproject:game_memory damageFeedback