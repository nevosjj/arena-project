##########################################################
## Chiamata da recording:actions/start_recording        ##
## Esecutore: ogni giocatore in partita                 ##
## Crea il suo record e lo aggiunge a                   ##
## actual_match.players                                 ##
##########################################################

# ID
data modify storage match_recorder:data player set value {winner:0b}
execute store result storage match_recorder:data player.ID int 1.0 run scoreboard players get @s ID

# Nome
loot replace entity @s enderchest.0 loot recording:player_name
data modify storage match_recorder:data player.username set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name

# Vincitore della partita (tag messo da match:end/win)
execute if entity @s[tag=game.winner] run data modify storage match_recorder:data player.winner set value 1b

# Statistiche
function recording:transfer/totals
function recording:transfer/stats

# Abilità
function recording:transfer/abilities with storage match_recorder:data player

# Inserimento
data modify storage match_recorder:data actual_match.players append from storage match_recorder:data player
data remove storage match_recorder:data player
