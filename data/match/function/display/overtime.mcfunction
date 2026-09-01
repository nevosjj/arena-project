###############################################
## Chiamato da match:events/overtime         ##
## La funzione attiva il sistema di overtime ##
###############################################

# Aggiunta del testo di overtime
scoreboard players set .overtime game_display -1002

# Imposta gli spazi vuoti
scoreboard players display numberformat .overtime game_display blank

# Imposta l'ordine
$scoreboard players display name .overtime game_display [{"text":">> ","color":"dark_red","bold":true},{"text":"ᴏᴠᴇʀᴛɪᴍᴇ +$(overtimeDamage)%","color":"red","bold":true},{"text":" <<","color":"dark_red","bold":true}]