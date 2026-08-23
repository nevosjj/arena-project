###################################
## Chiamata da health:death
## La funzione cerca di capire se far continuare la partita
###################################

# Simula la perdita di una vita (un round, quindi 2 cuori vanilla)
scoreboard players remove @s player.hearts 2

# Nel caso che la partita debba continuare, si inserisce lo score in uno storage per applicare la nuova vita
execute store result storage arenaproject:game_memory temporary.newLives float 1.0 run scoreboard players get @s player.hearts

# Caso in cui il giocatore ha ancora vita
execute if score @s player.hearts matches 1.. run function match:new_round with storage arenaproject:game_memory temporary

# Caso in cui il giocatore non ha più vita
execute if score @s player.hearts matches ..0 run function match:finish_match