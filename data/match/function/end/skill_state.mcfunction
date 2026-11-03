######################################################
## Chiamata da match:events/new_round               ##
## || match:end/cleanup (prima del reset obiettivi) ##
## Esecutore: un giocatore in partita               ##
## Azzera lo stato lasciato dalle abilità attive:   ##
## tag dinamici, tag di stato, rallentamenti,       ##
## scudo osseo. Non tocca i dati della selezione.   ##
######################################################

## Tag con ID (serve lo score ID)
execute store result storage arenaproject:game_memory temporary.skill_state.ID int 1 run scoreboard players get @s ID
function match:end/clean_macro_tags with storage arenaproject:game_memory temporary.skill_state
data remove storage arenaproject:game_memory temporary.skill_state

## Ricarica ritardata (abilità rimaste IN USO)
tag @s remove support.in_use
tag @s remove utility.in_use

## Scudo osseo
tag @s remove skill.bone_shield
scoreboard players reset @s counter.support
scoreboard players reset @s duration.support
scoreboard players set @s stat.defense 0

## Effetti subiti
tag @s remove freeze_breath.slowed
tag @s remove magnetic_impulse.immobilized
tag @s remove lightning_strike.immobilized
tag @s remove end_teleport.player
tag @s remove flame_sword.energy
tag @s remove flame_sword.p0
tag @s remove flame_sword.p2
attribute @s minecraft:movement_speed modifier remove freeze_breath:slow
attribute @s minecraft:jump_strength modifier remove lightning_strike:jump
attribute @s minecraft:movement_speed modifier remove lightning_strike:slow
attribute @s minecraft:movement_speed modifier remove magnetic_impulse:immobilize
attribute @s minecraft:jump_strength modifier remove magnetic_impulse:immobilize
