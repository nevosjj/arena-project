#################################################
## INFO                                        ##
## CHIAMATA DA skills/activations/tipo_abilita ##
#################################################

## Immagazzina nello storage temporaneo gli ID giocatore, ID squadra e ID abilità
# ID e teamID sono importanti per capire i bersagli delle abilità
execute store result storage arenaproject:game_memory temporary.activation.ID int 1 run scoreboard players get @s ID
execute store result storage arenaproject:game_memory temporary.activation.teamID int 1 run scoreboard players get @s teamID

## Inserimento Item
# L'Item segnala che l'abilità è sotto ricarica
execute if entity @s[tag=execute_item_removal] run function skills:activations/flow/unavailable with storage arenaproject:game_memory temporary.activation

## ESTRAZIONE player_name
function skills:activations/flow/player_name

## ESTRAZIONE skillIndex
# Ottengo le proprietà dell'abilità precisa in un tipo di abilità specifico
function skills:activations/flow/search_id with storage arenaproject:game_memory temporary.activation

## Chiama la funzione di ricerca abilità tramite le informazioni appena acquisite
function skills:activations/flow/macro_call with storage arenaproject:game_memory temporary.activation