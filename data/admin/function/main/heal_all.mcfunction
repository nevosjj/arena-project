######################################################
## Chiamata da comando admin                        ##
## /function admin:main/heal_all                    ##
## Riporta la vita al massimo a tutti i giocatori   ##
## vivi in partita e aggiorna sidebar e actionbar   ##
######################################################

# Controllo partita in corso
execute unless entity @a[tag=in_game] run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Nessuna partita in corso.","color":"gray","bold":false}]
execute unless entity @a[tag=in_game] run return fail

# Cura
execute as @a[tag=in_game,tag=!round.dead] run scoreboard players operation @s stat.current_health = @s stat.max_health

# Aggiornamento display
execute as @a[tag=in_game,tag=!round.dead] run function match:display/update
execute as @a[tag=in_game,tag=!round.dead] run function health:auxiliary/actionbar

# Feedback
execute as @a[tag=in_game,tag=!round.dead] at @s run playsound entity.player.levelup ui @s ~ ~ ~ 0.5 1.5
tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Vita ripristinata a tutti.","color":"gray","bold":false}]
