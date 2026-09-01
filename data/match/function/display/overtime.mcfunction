###############################################
## Chiamato da match:events/overtime         ##
## La funzione attiva il sistema di overtime ##
###############################################

# Abilitazione neon
scoreboard players set #overtime counter 1

# Booleana
scoreboard players set #overtime bool 1

# Imposta l'ordine
$scoreboard players display name .overtime game_display [{"text":">> ","color":"dark_red","bold":true},{"text":"ᴏᴠᴇʀᴛɪᴍᴇ +$(overtimeDamage)%","color":"red","bold":false},{"text":" <<","color":"dark_red","bold":true}]