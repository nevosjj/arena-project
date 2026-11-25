## Operazione moltiplicatori
# Positivi
# Negativi

# Trasformazione danni
scoreboard players operation @s incoming_damage += @s melee_damage

## Abilità che reagiscono al colpo
# Scudo osseo: consuma un teschio (il corpo a corpo fa comunque danno pieno)
execute if entity @s[tag=skill.bone_shield] unless score #round_ended bool matches 1 run function skills:list/support/bone_shield/marker

# Immissione danni
data modify storage arenaproject:game_memory damageFeedback.abilitySource set value "null"
data modify storage arenaproject:game_memory damageFeedback.playerName set value "null"

# Funzione danni
function health:math/incoming_damage with storage arenaproject:game_memory damageFeedback