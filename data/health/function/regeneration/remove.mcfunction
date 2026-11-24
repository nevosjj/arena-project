################################################################
## Chiamata da health:deaths/health || match:events/new_round ##
## Esecutore: il giocatore                                    ##
## Svuota la pool: quello che restava è perso.                ##
################################################################

execute unless score @s stat.regeneration_pool matches 1.. run return fail
execute store result score @s poststat.regen_lost run compute entity @s integer health:regen/drained_lost_stat
scoreboard players reset @s stat.regeneration_pool
scoreboard players reset @s stat.regeneration_timer
