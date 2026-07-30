## Il ruolo della funzione prende l'indice disponibile per salvare la partita nello storage della lobby.

# Ottenimento indice attuale dallo storage globale
# temp = indice chest
# temp2 = indice vero
execute store result score #match_index temp run data get storage api.nevosjj.lobby:match_list saveIndexChest
execute store result score #match_index temp2 run data get storage api.nevosjj.lobby:match_list saveIndex

# Salva un dato per poterlo usarlo dopo per prendere le abilità e le statistiche giocatore (prima che venga aggiornato)
data modify storage arenaproject:game_memory temp.matchIndex set from storage api.nevosjj.lobby:match_list saveIndex

# Inserimento dell'indice sullo storage match recorder
execute store result storage match_recorder:data actual_match.chestIndex int 1.0 run scoreboard players get #match_index temp
execute store result storage match_recorder:data actual_match.index int 1.0 run scoreboard players get #match_index temp2

# Aumenta lo score dell'indice
scoreboard players add #match_index temp 1

# Se 17 (7) o più, torna a 10 (0)
execute if score #match_index temp matches 17.. run scoreboard players set @s temp 10

# Ottieni indice dell'array dello storage della match_list della lobby (-10)
scoreboard players operation #match_index temp2 = #match_index temp
scoreboard players remove #match_index temp2 10

# Aggiornamento storage lobby
execute store result storage api.nevosjj.lobby:match_list saveIndexChest int 1.0 run scoreboard players get #match_index temp
execute store result storage api.nevosjj.lobby:match_list saveIndex int 1.0 run scoreboard players get #match_index temp2

# Pulizia score
scoreboard players reset #match_index