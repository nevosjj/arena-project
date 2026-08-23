##########################################################
## La funzione, dopo i festeggiamenti di un vincitore,  ##
## pulisce l'ambiente della partita                     ##
##########################################################

# Rimozione stopwatch
stopwatch remove match:win_break

# Ritorno in lobby
tp @a 22 -54 8 90 0

# Feedback
execute as @a at @s run playsound block.portal.travel ui @s ~ ~ ~ 0.5 0.8
tellraw @a [{"text":"\n> ","color":"gray","bold":true},{"text":"Teletrasporto in lobby.","color":"gold","bold":false}]

# Rimozione mappa nelle coordinate giuste
fill 89 -29 -1 141 16 50 air

# Rimozione possibilità spectate
tag @e[type=interaction,tag=matchmaking.1v1] remove can_spectate

# Modalità giusta
gamemode adventure @a

# Pulisci actionbar
title @a[tag=in_game] actionbar ""