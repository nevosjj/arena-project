#######################################################################
## Chiamato da health:types/melee_damage || ability_damage           ##
## La funzione gestisce il danno totale ricevuto tra melee e abilità ##
#######################################################################

# Ignora completamente se il round è finito
execute if score #round_ended bool matches 1 run function health:math/nullify

# Berserk dell'attaccante: incoming_damage * (100 + bonus) / 100
    # Melee: l'attaccante ha il tag damage.dealer | Abilità: l'attaccante si trova dal nome (playerName)
execute if score @s melee_damage matches 1.. if entity @a[tag=damage.dealer,tag=powerup.berserk] store result score @s incoming_damage run compute entity @s integer health:damage/berserk
$execute if score @s ability_damage matches 1.. if entity @a[name="$(playerName)",tag=powerup.berserk] store result score @s incoming_damage run compute entity @s integer health:damage/berserk

# Moltiplicatore overtime: incoming_damage * (100 + #overtime multiplier) / 100
execute store result score @s incoming_damage run compute entity @s integer health:damage/overtime

# Rimozione danni resistenza danni
execute unless score @s stat.defense matches 0 run function health:math/halve_damage

# Scudo osseo
# Interrompe la fonte di danno immediatamente
execute if entity @s[tag=skill.bone_shield] run function skills:list/support/bone_shield/marker

# Feedback
$execute if score @s ability_damage matches 1.. run \
    tellraw @s [ \
    {"atlas":"minecraft:gui","sprite":"mob_effect/wither"},\
    {"text":" > ","color":"dark_gray","bold":false},\
    {"text":"-","color":"red","bold":false},\
    {"score":{objective:"incoming_damage","name":"@s"},"color":"dark_red","bold":false},\
    {"text":" da ","color":"gray","bold":false},\
    {"text":"$(abilitySource)"},\
    {"text":" di ","color":"gray","bold":false},\
    {"text":"$(playerName)"},\
    {"text":"!","color":"gray","bold":false},\
    ]

# Feedback in-game text_display
execute store result storage arenaproject:game_memory damageFeedback.text int 1.0 run scoreboard players get @s incoming_damage
execute at @s run function health:texts/damage with storage arenaproject:game_memory damageFeedback

## ABILITA
# Catena Vampirica check
execute at @s as @e[type=marker,tag=vampiric_chain.marker,distance=..96] run function skills:list/support/vampiric_chain/heal with entity @s data

## STATISTICHE POST-PARTITA
# Danno netto: dopo overtime e difesa
# Corpo a corpo: l'attaccante ha il tag damage.dealer (health:auxiliary/attack_hurt)
execute if score @s melee_damage matches 1.. run scoreboard players operation @s poststat.melee_damage_received += @s incoming_damage
execute if score @s melee_damage matches 1.. run scoreboard players operation @a[tag=damage.dealer] poststat.melee_inflicted += @s incoming_damage
# Abilità: l'attaccante si trova dal nome (playerName)
execute if score @s ability_damage matches 1.. run scoreboard players operation @s poststat.ability_damage_received += @s incoming_damage
$execute if score @s ability_damage matches 1.. run tag $(playerName) add damage.ability_dealer
scoreboard players operation @a[tag=damage.ability_dealer] poststat.ability_inflicted += @s incoming_damage
tag @a[tag=damage.ability_dealer] remove damage.ability_dealer

# Rimozione
scoreboard players operation @s stat.current_health -= @s incoming_damage

# La vita non scende mai sotto lo zero
execute if score @s stat.current_health matches ..-1 run scoreboard players set @s stat.current_health 0

# Pool di rigenerazione: ogni colpo con danno > 0 toglie regenDrain (overtime escluso, non passa da qui)
execute if score @s incoming_damage matches 1.. if score @s stat.regeneration_pool matches 1.. run function health:regeneration/drain

# Aumento danni recenti
scoreboard players operation @s recent_damage += @s incoming_damage

# Reset dei danni recenti
scoreboard players set @s recent_damage.timer 1

# Aggiornamento sidebar
function match:display/update

# Aggiornamento actionbar
function health:auxiliary/actionbar

# Registrazione: uccisione (timestamps), prima del flusso di morte
execute if score @s[tag=!round.dead] stat.current_health matches ..0 run function recording:timestamps/kill

# Controllo morte
execute if score @s[tag=!round.dead] stat.current_health matches ..0 at @s run function health:deaths/health

# Reset
data remove storage arenaproject:game_memory damageFeedback
scoreboard players reset @s melee_damage
scoreboard players reset @s ability_damage
scoreboard players reset @s incoming_damage

# Cura
effect give @s instant_health 1 10 true