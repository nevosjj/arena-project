####################################
## Chiamato da match:end/win ##
## La funzione crea il flusso di  ##
## funzioni per mettere la partita##
## nello storage della lobby      ##
####################################

# Calcolo tempo
function recording:time/recursive_time

# Impostazione nome random match recorder
function recording:actions/name_randomizer

# Ottieni indice dove salvare la partita
function recording:writing/get_index

# Copia tutti i dati sopra realizzati
# DA: match del match_recorder -> A: storage partite salvate
function recording:transfer/from_match_to_lobby with storage match_recorder:data actual_match

# Comincia a creare un elemento nell'array players[]
# Per ciascun giocatore esistente
execute as @a[tag=in_game] run function recording:transfer/new_player with storage match_recorder:data actual_match

# Preparati finalmente:
# 1. Lo spazio di trasferimento (match_recorder:data)
# 2. L'array dei giocatori
# Si procede con l'inserimento di tutti i dati dei giocatori
# 1. Equipaggiamento (Abilità..)
# 2. Statistiche
execute as @a[tag=in_game] run function recording:transfer/player_data