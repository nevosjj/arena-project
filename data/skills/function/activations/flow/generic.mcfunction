#################################################
## INFO                                        ##
## CHIAMATA DA skills/activations/tipo_abilita ##
#################################################

## Immagazzina nello storage temporaneo gli ID giocatore, ID squadra e ID abilità
# ID e teamID sono importanti per capire i bersagli delle abilità
execute store result storage arenaproject:game_memory temporary.activation.ID int 1 run scoreboard players get @s ID
execute store result storage arenaproject:game_memory temporary.activation.teamID int 1 run scoreboard players get @s teamID

## Vetro di default (IN RICARICA), skills:activations/flow/cooldown può cambiarlo
data modify storage arenaproject:game_memory temporary.activation merge value {glassItem:"red_stained_glass_pane",glassName:"IN RICARICA",glassColor:"red"}

## Ricarica (Support, Utility)
# Offensive usa l'energia, Ultimate si usa una volta sola
execute if entity @s[tag=execute_item_removal] unless data storage arenaproject:game_memory temporary.activation{skillTYPE_txt:"ultimate"} \
    run function skills:activations/flow/cooldown with storage arenaproject:game_memory temporary.activation

## Inserimento Item
# L'Item segnala che l'abilità è in ricarica o in uso
execute if entity @s[tag=execute_item_removal] run function skills:activations/flow/unavailable with storage arenaproject:game_memory temporary.activation

## ESTRAZIONE player_name
function skills:activations/flow/player_name

## ESTRAZIONE skillIndex
# Ottengo le proprietà dell'abilità precisa in un tipo di abilità specifico
function skills:activations/flow/search_id with storage arenaproject:game_memory temporary.activation

## Chiama la funzione di ricerca abilità tramite le informazioni appena acquisite
function skills:activations/flow/macro_call with storage arenaproject:game_memory temporary.activation