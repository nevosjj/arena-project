## Operazione moltiplicatori
# Positivi
# Negativi

# Trasformazione danni
scoreboard players operation @s incoming_damage += @s melee_damage

## Operazione moltiplicatori
# Negativi (buff di chi subisce)
    # Difesa melee: danno assorbito (poststat) PRIMA di ridurre, poi incoming_damage * max(0, 100 - stat.melee_defense) / 100
execute if score @s stat.melee_defense matches 1.. store result score @s poststat.damage_halved run compute entity @s integer health:damage/melee_halved_total
execute if score @s stat.melee_defense matches 1.. store result score @s incoming_damage run compute entity @s integer health:damage/melee_defense

# Immissione danni
data modify storage arenaproject:game_memory damageFeedback.abilitySource set value "null"
data modify storage arenaproject:game_memory damageFeedback.playerName set value "null"

# Funzione danni
function health:math/incoming_damage with storage arenaproject:game_memory damageFeedback

## Abilità che reagiscono al colpo (dopo il danno: la cura del teschio non va sprecata a vita piena)
# Scudo osseo: consuma un teschio e cura
execute if entity @s[tag=skill.bone_shield] unless score #round_ended bool matches 1 run function skills:list/support/bone_shield/marker
