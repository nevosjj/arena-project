##########
# Chiamata da root:tick
##########

## La funzione inserisce la lista di giocatori + le loro statistiche

# Feedback audio
execute at @s run playsound minecraft:entity.villager.work_cartographer voice @a ~ ~ ~ 1 1

# Metti sfondo di vetro
function recording:insert/put_glass

# Immisione di vetro rosso per slot vuoti
function recording:insert/put_missing_row

# Barriera di ritorno indietro
item replace block 9 -55 39 container.26 with barrier[custom_data={infolist_back:1b},minecraft:custom_name={"text":"Torna indietro","color":"#fa2f2f","italic":false}]

# Inizializzazione indice
data modify storage api.nevosjj.lobby:match_list temp.playerIndex set value 0
data modify storage api.nevosjj.lobby:match_list temp.playerIndexChest set value 10

# Scrittura nome fantasma per far funzionare equip_for
data modify storage api.nevosjj.lobby:match_list temp.username set value "Null"

# Togli la testa
clear @s player_head

# Inizializza lo scorrimento
function recording:check/stats/stats_for with storage api.nevosjj.lobby:match_list temp