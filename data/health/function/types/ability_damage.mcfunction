#########################################################
## Funzione che applica danni di abilità               ##
## Chiamato da skills:auxiliary/targeting/apply_damage ##
#########################################################


# Trasformazione danni
scoreboard players operation @s incoming_damage += @s ability_damage

## Operazione moltiplicatori
# Positivi (debuff di chi subisce): nessuno per ora
# Negativi (buff di chi subisce)
    # Difesa abilità: danno assorbito (poststat) PRIMA di ridurre, poi incoming_damage * max(0, 100 - stat.ability_defense) / 100
execute if score @s stat.ability_defense matches 1.. store result score @s poststat.damage_halved run compute entity @s integer health:damage/ability_halved_total
execute if score @s stat.ability_defense matches 1.. store result score @s incoming_damage run compute entity @s integer health:damage/ability_defense

## Abilità che reagiscono al colpo (dopo la difesa: l'ultimo teschio chiude lo scudo e resetta la difesa)
# Scudo osseo: consuma un teschio
execute if entity @s[tag=skill.bone_shield] unless score #round_ended bool matches 1 run function skills:list/support/bone_shield/marker

# Display danno
damage @s 0.0000001 generic

# Feedback
$data modify storage arenaproject:game_memory damageFeedback.abilitySource set value "$(name)"
$data modify storage arenaproject:game_memory damageFeedback.playerName set value "$(playerName)"

# Simulatore danno per cercare l'origine e dare feedback
function health:auxiliary/ability_source with storage arenaproject:game_memory damageFeedback

# Funzione danni
function health:math/incoming_damage with storage arenaproject:game_memory damageFeedback