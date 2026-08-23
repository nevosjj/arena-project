######################################################################
## La funzione pulisce tutto ciò che c'è da pulire dopo una partita ##
######################################################################

# Sidebar
# Impostare in modo tale che mostri il vincitore con colori intermittenti
scoreboard objectives setdisplay sidebar

# Pulizia inventario
clear @s

# Stopwatches (eccetto match:win_break)
stopwatch remove match:break
stopwatch remove match:sound
stopwatch remove match:overtime
stopwatch remove match:round_break

# Uccisione entità
kill @e[type=marker]
kill @e[type=block_display]

# Pulizia squadra
team leave @s[tag=in_game]

# Pulizia energia
experience set @s 0 levels

# Attributi
execute as @s[tag=in_game] run attribute @s minecraft:attack_damage base set 0.0
execute as @s[tag=in_game] run attribute @s minecraft:max_health base set 10.0
execute as @s[tag=in_game] run attribute @s minecraft:knockback_resistance base set 1.0
execute as @s[tag=in_game] run attribute @s minecraft:movement_speed modifier remove freeze_breath:slow
execute as @s[tag=in_game] run attribute @s minecraft:jump_strength modifier remove lightning_strike:jump
execute as @s[tag=in_game] run attribute @s minecraft:movement_speed modifier remove lightning_strike:slow
execute as @s[tag=in_game] run attribute @s minecraft:movement_speed modifier remove magnetic_impulse:immobilize
execute as @s[tag=in_game] run attribute @s minecraft:jump_strength modifier remove magnetic_impulse:immobilize

# Effetto di rigenerazione dopo la redistribuzione di vita
effect give @s regeneration 10 10 true

## Obiettivi
scoreboard players reset *

## Tags
tag @s remove skill.bone_shield
tag @s remove round.dead
tag @s remove round.loser
tag @s remove round.winner
tag @s remove energy.activated
tag @s remove support_down
tag @s remove utility_down
tag @s remove ultimate_down
tag @s remove freeze_breath.slowed
tag @s remove magnetic_impulse.immobilized
tag @s remove flame_sword.energy
tag @s remove flame_sword.p0
tag @s remove flame_sword.p2

## STORAGE

# Recorder
data remove storage match_recorder:data actual_match

# Dati mappa
data remove storage map_data:1v1 temporary
data remove storage map_data:1v1 list

# Impostazione match
data remove storage match_data:1v1 list

# Memoria partita
data remove storage arenaproject:game_memory players
data remove storage arenaproject:game_memory temp
data remove storage arenaproject:game_memory temporary
data remove storage arenaproject:game_memory animationTemp

data remove storage ability_data:offensive skills
data remove storage ability_data:support skills
data remove storage ability_data:utility skills
data remove storage ability_data:ultimate skills

## Tag finale
tag @s remove in_game