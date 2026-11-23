##########################################################
## Chiamata da recording:transfer/player                ##
## Esecutore: il giocatore                              ##
## Copia gli score poststat.* nel suo record            ##
## (stesso nome, senza "poststat.")                     ##
##########################################################

# Danno
execute store result storage match_recorder:data player.stats.melee_inflicted int 1.0 run scoreboard players get @s poststat.melee_inflicted
execute store result storage match_recorder:data player.stats.best_combo int 1.0 run scoreboard players get @s poststat.best_combo
execute store result storage match_recorder:data player.stats.ability_inflicted int 1.0 run scoreboard players get @s poststat.ability_inflicted
execute store result storage match_recorder:data player.stats.summon_damage_inflicted int 1.0 run scoreboard players get @s poststat.summon_damage_inflicted

# Difesa
execute store result storage match_recorder:data player.stats.melee_damage_received int 1.0 run scoreboard players get @s poststat.melee_damage_received
execute store result storage match_recorder:data player.stats.ability_damage_received int 1.0 run scoreboard players get @s poststat.ability_damage_received
execute store result storage match_recorder:data player.stats.total_damage_received int 1.0 run scoreboard players get @s poststat.total_damage_received
execute store result storage match_recorder:data player.stats.damage_halved int 1.0 run scoreboard players get @s poststat.damage_halved

# Guarigione
execute store result storage match_recorder:data player.stats.instant_heal_received int 1.0 run scoreboard players get @s poststat.instant_heal_received
execute store result storage match_recorder:data player.stats.regen_healed int 1.0 run scoreboard players get @s poststat.regen_healed
execute store result storage match_recorder:data player.stats.regen_lost int 1.0 run scoreboard players get @s poststat.regen_lost
execute store result storage match_recorder:data player.stats.total_heal_received int 1.0 run scoreboard players get @s poststat.total_heal_received

# Esperienza
execute store result storage match_recorder:data player.stats.total_xp_generated int 1.0 run scoreboard players get @s poststat.total_xp_generated
execute store result storage match_recorder:data player.stats.timer_xp_generated int 1.0 run scoreboard players get @s poststat.timer_xp_generated
execute store result storage match_recorder:data player.stats.melee_xp_generated int 1.0 run scoreboard players get @s poststat.melee_xp_generated
execute store result storage match_recorder:data player.stats.xp_wasted int 1.0 run scoreboard players get @s poststat.xp_wasted

# Obiettivi
execute store result storage match_recorder:data player.stats.powerup_picked int 1.0 run scoreboard players get @s poststat.powerup_picked
