###############################################################################
## Chiamata da root:ticks/main (ogni 10 tick, se stat.regeneration_pool > 0) ##
## Esecutore: il giocatore che rigenera                                      ##
## Un impulso: consuma min(pool, regenPulse) dalla pool e cura fino al max.  ##
## Quello che non entra (vita piena) è perso (poststat.regen_lost).          ##
## Provider: health:regen/*                                                  ##
###############################################################################

# Round finito: niente cure
execute if score #round_ended bool matches 1 run return fail

# Quantità dell'impulso (step) e cura effettiva (healed)
execute store result storage arenaproject:game_memory regen.step int 1 run compute entity @s integer health:regen/step
execute store result storage arenaproject:game_memory regen.healed int 1 run compute entity @s integer health:regen/healed

# Statistiche post-partita
execute store result score @s poststat.regen_healed run compute entity @s integer health:regen/new_healed_stat
execute store result score @s poststat.regen_lost run compute entity @s integer health:regen/new_lost_stat

# Cura e consumo della pool
execute store result score @s stat.current_health run compute entity @s integer health:regen/new_health
execute store result score @s stat.regeneration_pool run compute entity @s integer health:regen/new_pool

# Feedback sonoro (solo se ha curato qualcosa)
execute unless data storage arenaproject:game_memory regen{healed:0} at @s run playsound minecraft:block.bubble_column.bubble_pop ui @s ~ ~ ~ 10 2

# Pool vuota
execute if score @s stat.regeneration_pool matches ..0 run scoreboard players reset @s stat.regeneration_pool

# Aggiornamento sidebar e actionbar
function match:display/update
function health:auxiliary/actionbar

# Pulizia
data remove storage arenaproject:game_memory regen
