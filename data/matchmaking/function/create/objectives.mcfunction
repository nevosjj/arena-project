######################################
## Chiamato da ---                  ##
## La funzione si occupa di settare ##
## gli score dei giocatori          ##
######################################

# Inserimento HP giocatori sotto il loro nome
scoreboard objectives setdisplay below_name stat.current_health

## Obiettivi

# Vita (dallo storage della modalità; si parte a vita piena)
execute store result score @a[tag=in_game] stat.max_health run data get storage match_data:1v1 list.1v1.maxHealth
execute as @a[tag=in_game] run scoreboard players operation @s stat.current_health = @s stat.max_health

# Statistiche (dallo storage della modalità)
execute store result score @a[tag=in_game] stat.attack run data get storage match_data:1v1 list.1v1.attack
execute store result score @a[tag=in_game] stat.defense run data get storage match_data:1v1 list.1v1.defense

# Combo (inizializzazione)
scoreboard players set @a[tag=in_game] stat.combo 0
scoreboard players set @a[tag=in_game] poststat.best_combo 0

# Potenziamenti raccolti (inizializzazione)
scoreboard players set @a[tag=in_game] poststat.powerup_picked 0

# Esperienza (dallo storage della modalità)
# limit = tempo di ottenimento (expTimer)
# gain = ottenimento (expGain)
execute store result score @a[tag=in_game] experience_limit run data get storage match_data:1v1 list.1v1.expTimer
execute store result score @a[tag=in_game] experience_gain run data get storage match_data:1v1 list.1v1.expGain