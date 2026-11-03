######################################################
## Chiamata da admin:main/round_win || match_win    ##
## Controlla che il round sia in combattimento,     ##
## che l'esecutore sia un giocatore vivo in game    ##
## e che esista un avversario vivo                  ##
## Ritorna 1 se si può procedere, fail altrimenti   ##
######################################################

# Esecutore valido
execute unless entity @s[type=player,tag=in_game,tag=!round.dead] run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Devi essere un giocatore vivo in partita.","color":"gray","bold":false}]
execute unless entity @s[type=player,tag=in_game,tag=!round.dead] run return fail

# Combattimento iniziato (non in selezione o apertura cancelli)
execute unless entity @s[tag=energy.activated] run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Il combattimento non è ancora iniziato.","color":"gray","bold":false}]
execute unless entity @s[tag=energy.activated] run return fail

# Round già concluso
execute if score #round_ended bool matches 1 run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Il round è già concluso.","color":"gray","bold":false}]
execute if score #round_ended bool matches 1 run return fail

# Avversario presente
tag @s add admin.self
execute store success storage arenaproject:game_memory temporary.admin.opponent byte 1 if entity @a[tag=in_game,tag=!round.dead,tag=!admin.self]
tag @s remove admin.self
execute if data storage arenaproject:game_memory temporary.admin{opponent:0b} run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Nessun avversario vivo.","color":"gray","bold":false}]
execute if data storage arenaproject:game_memory temporary.admin{opponent:0b} run return fail

# Reset
data remove storage arenaproject:game_memory temporary.admin

return 1
