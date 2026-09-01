# Imposta il titolo
scoreboard objectives setdisplay sidebar game_display
scoreboard objectives modify game_display displayautoupdate true
scoreboard objectives modify game_display displayname [{"text":"Arena Project","color":"#d8bb19","bold":true}]

# Imposta numerazione vuota
scoreboard players display numberformat .space0 game_display blank
scoreboard players display numberformat .space1 game_display blank
scoreboard players display numberformat .space2 game_display blank
scoreboard players display numberformat .space3 game_display blank

# Imposta score di ordine
scoreboard players set .space0 game_display 3001
scoreboard players set .space1 game_display 3000
scoreboard players set .space2 game_display 2996
scoreboard players set .space3 game_display -1001

# Imposta nomi
scoreboard players display name .space0 game_display [{"text":"made by nevosjj","color":"gray"}]
scoreboard players display name .space1 game_display ""
scoreboard players display name .space2 game_display ""
scoreboard players display name .space3 game_display ""

# Imposta intitolazione "INFORMAZIONI"
scoreboard players set .infotitle game_display 2999
scoreboard players display name .infotitle game_display [{"text":"> ","color":"dark_gray","bold":true},{"text":"ɪɴꜰᴏʀᴍᴀᴢɪᴏɴɪ","color":"dark_aqua","bold":false}]
scoreboard players display numberformat .infotitle game_display blank

# Imposta intitolazione "INFORMAZIONI" > "TEMPO"
scoreboard players set .timetitle game_display 2998
scoreboard players display name .timetitle game_display [{"text":"ᴛᴇᴍᴘᴏ 00:00","color":"gold","bold":false}]
scoreboard players display numberformat .timetitle game_display blank

# Imposta intitolazione "INFORMAZIONI" > "POWERUP"
scoreboard players set .poweruptitle game_display 2997
scoreboard players display name .poweruptitle game_display [{"text":"ᴘᴏᴛᴇɴᴢɪᴀᴍᴇɴᴛᴏ","color":"light_purple","bold":false},{"text":" ɴᴇꜱꜱᴜɴᴏ","color":"gray","bold":false}]
scoreboard players display numberformat .poweruptitle game_display blank

# Imposta intitolazione "GIOCATORI"
scoreboard players set .playerstitle game_display 2995
scoreboard players display name .playerstitle game_display [{"text":"> ","color":"dark_gray","bold":true},{"text":"ɢɪᴏᴄᴀᴛᴏʀɪ","color":"dark_aqua","bold":false}]
scoreboard players display numberformat .playerstitle game_display blank

# Imposta intitolazione "OVERTIME" (Che sarà vuoto all'inizio
scoreboard players set .overtime game_display -2000
scoreboard players display name .overtime game_display ""
scoreboard players display numberformat .overtime game_display blank

# Impostazione score dei giocatori
execute as @a[tag=in_game] run scoreboard players display numberformat @s game_display blank
execute as @a[tag=in_game] run scoreboard players operation @s game_display = @s stat.current_health