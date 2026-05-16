## INFO
## Called by match/low_timer
## Se i giocatori non hanno finito di selezionare tutto, allora copia dal default (deciso da me)

# Feedback
tellraw @s [{"text":"AVVERTENZA","color":"red","bold":false}, \
    {"text":" > ","color":"dark_gray","bold":true}, \
        {"text":" Non hai scelto alcune abilità, sono state selezionate abilità di default:","color":"gray","bold":false}]

# Metti ID giocatore nella temp
execute store result storage arenaproject:game_memory temporary.ID int 1 run scoreboard players get @s ID

# Macro expand
function selection:insertion/select/default_macro with storage arenaproject:game_memory temporary

# Pulisci temporanea
data remove storage arenaproject:game_memory temporary