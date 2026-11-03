######################################################
## Chiamata da comando admin                        ##
## /function admin:main/low_cost                    ##
## Da usare dopo la selezione delle abilità         ##
## Ricarica 1s e costo energia 1 per tutti          ##
## Dura fino alla fine della partita                ##
######################################################

# Controllo partita in corso
execute unless entity @a[tag=in_game] run return run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Nessuna partita in corso.","color":"gray","bold":false}]

# Ricariche (valore copiato nel timer da skills:activations/trigger/general/down)
scoreboard players set @a[tag=in_game] cooldown.utility 1
scoreboard players set @a[tag=in_game] cooldown.support 1
scoreboard players set @a[tag=in_game] cooldown.ultimate 1

# Ricariche già in corso
execute as @a[tag=in_game] if score @s cooldown.utility_timer matches 2.. run scoreboard players set @s cooldown.utility_timer 1
execute as @a[tag=in_game] if score @s cooldown.support_timer matches 2.. run scoreboard players set @s cooldown.support_timer 1
execute as @a[tag=in_game] if score @s cooldown.ultimate_timer matches 2.. run scoreboard players set @s cooldown.ultimate_timer 1

# Costo energia (abilità offensiva)
scoreboard players set @a[tag=in_game] experience_cost 1

# Feedback
tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Tutto costa poco.","color":"gray","bold":false}]
