## Operazione moltiplicatori
# Positivi
# Negativi

# Trasformazione danni
scoreboard players operation @s incoming_damage += @s ability_damage

# Display danno
damage @s 0.0000001 generic

# Feedback
$data modify storage arenaproject:game_memory damageFeedback.abilitySource set value "$(name)"
$data modify storage arenaproject:game_memory damageFeedback.playerName set value "$(playerName)"

# Simulatore danno per cercare l'origine e dare feedback
function health:auxiliary/ability_source with storage arenaproject:game_memory damageFeedback

# Funzione danni
function health:math/incoming_damage with storage arenaproject:game_memory damageFeedback