##########################################################
## Chiamata da recording:transfer/player                ##
## Esecutore: il giocatore                              ##
## Calcola le statistiche "totali" a fine partita       ##
##########################################################

# Danni ricevuti = corpo a corpo + abilità
scoreboard players operation @s poststat.total_damage_received = @s poststat.melee_damage_received
scoreboard players operation @s poststat.total_damage_received += @s poststat.ability_damage_received

# Vita guarita = istantanea + rigenerativa
scoreboard players operation @s poststat.total_heal_received = @s poststat.instant_heal_received
scoreboard players operation @s poststat.total_heal_received += @s poststat.regen_healed

# XP generata = secondi + colpi melee (nette, senza scarto)
scoreboard players operation @s poststat.total_xp_generated = @s poststat.timer_xp_generated
scoreboard players operation @s poststat.total_xp_generated += @s poststat.melee_xp_generated
