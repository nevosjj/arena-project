##########################################################
## Chiamata da health:math/incoming_damage              ##
## Esecutore: il giocatore ucciso                       ##
## Il colpo che lo porta a 0 di vita (il vuoto non      ##
## passa da qui e non viene registrato)                 ##
## Evento: {event:"kill",player,killer,ability}         ##
## ability manca se l'uccisione è in corpo a corpo      ##
##########################################################

data modify storage match_recorder:data event set value {event:"kill"}

# Ucciso
function recording:timestamps/name
data modify storage match_recorder:data event.player set from storage match_recorder:data name

# Corpo a corpo: l'attaccante ha il tag damage.dealer (health:auxiliary/attack_hurt)
execute if score @s melee_damage matches 1.. as @a[tag=damage.dealer,limit=1] run function recording:timestamps/name
execute if score @s melee_damage matches 1.. if entity @a[tag=damage.dealer] run data modify storage match_recorder:data event.killer set from storage match_recorder:data name

# Abilità: nome dell'attaccante e dell'abilità (health:types/ability_damage)
execute if score @s ability_damage matches 1.. run data modify storage match_recorder:data event.killer set from storage arenaproject:game_memory damageFeedback.playerName
execute if score @s ability_damage matches 1.. run data modify storage match_recorder:data event.ability set from storage arenaproject:game_memory damageFeedback.abilitySource

function recording:timestamps/add
data remove storage match_recorder:data name
