######################################################
## Chiamata da comando admin                        ##
## /function admin:main/round_win                   ##
## Eseguita dal giocatore che deve vincere          ##
## Fa morire l'avversario col flusso normale        ##
## (animazione -> check_life -> round/partita)      ##
######################################################

# Controlli
execute unless function admin:auxiliary/check run return fail

# Morte dell'avversario
tag @s add admin.self
execute as @a[tag=in_game,tag=!round.dead,tag=!admin.self,limit=1] at @s run function admin:auxiliary/force_death
tag @s remove admin.self

# Feedback
tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Round assegnato.","color":"gray","bold":false}]
