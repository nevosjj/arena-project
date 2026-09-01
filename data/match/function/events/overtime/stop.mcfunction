##########################################
## Chiamata da match:events/round_pause ##               
## La funzione ferma le cose inerenti   ##
## all'overtime                         ##
##########################################

# Resetta il punteggio di overtime
scoreboard players reset #overtime

# Aggiunta del testo di overtime
scoreboard players display name .overtime game_display ""