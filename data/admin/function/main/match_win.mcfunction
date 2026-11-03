######################################################
## Chiamata da comando admin                        ##
## /function admin:main/match_win                   ##
## Eseguita dal giocatore che deve vincere          ##
## Porta l'avversario all'ultima vita e lo fa       ##
## morire: check_life chiama match:end/win          ##
######################################################

# Controlli
execute unless function admin:auxiliary/check run return fail

# Ultima vita (2 cuori vanilla = 1 round) e morte dell'avversario
# max_health viene ripristinato da match:end/cleanup
tag @s add admin.self
execute as @a[tag=in_game,tag=!round.dead,tag=!admin.self,limit=1] run attribute @s max_health base set 2
execute as @a[tag=in_game,tag=!round.dead,tag=!admin.self,limit=1] at @s run function admin:auxiliary/force_death
tag @s remove admin.self

# Feedback
tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Partita assegnata.","color":"gray","bold":false}]
