# Imposta la visione
scoreboard objectives setdisplay sidebar game_display
scoreboard objectives modify game_display displayautoupdate true
scoreboard objectives modify game_display displayname [{"text":"Arena Project","color":"#d8bb19","bold":true}]

# Imposta gli spazi vuoti
scoreboard players display numberformat .space0 game_display blank
scoreboard players display numberformat .space1 game_display blank
scoreboard players display numberformat .space2 game_display blank

# Imposta l'ordine
scoreboard players display name .space0 game_display [{"text":"made by nevosjj","color":"#d4aa30","italic":true}]
scoreboard players display name .space1 game_display ""
scoreboard players display name .space2 game_display ""

# Imposta score di ordine
scoreboard players set .space0 game_display 3001
scoreboard players set .space1 game_display 3000
scoreboard players set .space2 game_display -1001

# Impostazione score dei giocatori
execute as @a[tag=in_game] run scoreboard players display numberformat @s game_display blank
execute as @a[tag=in_game] run scoreboard players operation @s game_display = @s stat.current_health