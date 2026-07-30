##########
# Chiamata da root:tick
##########

## La funzione inserisce la lista di giocatori + il loro equipaggiamento

# Feedback audio
execute at @s run playsound block.smithing_table.use ui @s ~ ~ ~ 1 0.8

# Immisione di vetro per pulizia
item replace block 9 -55 39 container.12 with red_stained_glass_pane
item replace block 9 -55 39 container.13 with red_stained_glass_pane
item replace block 9 -55 39 container.14 with red_stained_glass_pane
item replace block 9 -55 39 container.15 with red_stained_glass_pane
item replace block 9 -55 39 container.16 with red_stained_glass_pane

# Inizializzazione indice
data modify storage api.nevosjj.lobby:match_list temp.playerIndex set value 0
data modify storage api.nevosjj.lobby:match_list temp.playerIndexChest set value 10

# Scrittura nome fantasma per far funzionare equip_for
data modify storage api.nevosjj.lobby:match_list temp.username set value "Null"

# Togli la testa
clear @s player_head

# Inizializza lo scorrimento
function recording:check/equip_for with storage api.nevosjj.lobby:match_list temp