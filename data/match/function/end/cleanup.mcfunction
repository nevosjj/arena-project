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
function skills:auxiliary/summon/cleanup
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

# Effetto di rigenerazione dopo la redistribuzione di vita
effect give @s regeneration 10 10 true

## Stato abilità: tag con ID, tag di stato, rallentamenti
# Prima del reset degli obiettivi, serve lo score ID
function match:end/skill_state

## Obiettivi
scoreboard players reset *

## Tags
tag @s remove round.dead
tag @s remove round.loser
tag @s remove round.winner
tag @s remove game.winner
tag @s remove energy.activated
tag @s remove support_down
tag @s remove utility_down
tag @s remove ultimate_down

# Selezione (se la partita finisce durante la selezione)
tag @s remove selecting
tag @s remove done_selecting
tag @s remove must_select.offensive
tag @s remove must_select.utility
tag @s remove must_select.support
tag @s remove must_select.ultimate

# Condizioni di attivazione
tag @s remove offensive.condition.raycast
tag @s remove offensive.condition.area
tag @s remove utility.condition.raycast
tag @s remove utility.condition.area
tag @s remove support.condition.raycast
tag @s remove support.condition.area
tag @s remove ultimate.condition.raycast
tag @s remove ultimate.condition.area
tag @s remove condition.rotation.target
tag @s remove silent.cooldown.feedback


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