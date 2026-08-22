#############
# La funzione si occupa di settare gli score dei giocatori
#############

# Inserimento HP giocatori sotto il loro nome
scoreboard objectives setdisplay below_name stat.current_health

## Obiettivi

# Vita
scoreboard players set @a[tag=in_game] stat.max_health 2000
scoreboard players set @a[tag=in_game] stat.current_health 2000

# Statistiche
scoreboard players set @a[tag=in_game] stat.attack 10
scoreboard players set @a[tag=in_game] stat.defense 0

# Combo (inizializzazione)
scoreboard players set @a[tag=in_game] stat.combo 0
scoreboard players set @a[tag=in_game] poststat.best_combo 0

# Esperienza
# limit = tempo di ottenimento
# gain = ottenimento
scoreboard players set @a[tag=in_game] experience_limit 25
scoreboard players set @a[tag=in_game] experience_gain 7