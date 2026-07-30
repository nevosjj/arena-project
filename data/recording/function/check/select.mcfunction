##########
# Chiamata da root:tick
# Prima o poi cambierò in modo che attivi da un altro datapack globale della lobby
##########

# Togli barrier in caso la navigazione porta qui
clear @s barrier

# Svuota la chest per un attimo e metti vetro di sfondo
function recording:check/put_glass

# Copia l'oggetto di registrazione per prendere i dati custom_data (se è una testa)
execute if items entity @s player.cursor player_head run item replace entity @s enderchest.0 from entity @p player.cursor

# Ottieni l'indice dalla testa, per poterlo usare nella navigazione dei dati partita selezionata
data modify storage api.nevosjj.lobby:match_list temp.cursorIndex set from entity @s EnderItems[0].components."minecraft:custom_data".headIndex

# Grafiche
item replace block 9 -55 39 container.12 with minecraft:player_head[custom_data={headstats:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y3OWQzYWRkZmRkNmM0MDQ4MTlhNTg2ZWY4MWFkZmRmNzdjOWY5NTU0YmMzM2Q3YTUwNTI2YzQwZDU5ZWY0OCJ9fX0="}]},minecraft:custom_name={"text":"Statistiche giocatori","color":"#2FFAD8","italic":false}] 1

item replace block 9 -55 39 container.13 with minecraft:player_head[custom_data={headtimelines:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmUwNmE1Y2E4YTU3ZjdmOTE3MTdhOGU5ODUwOTBlOTlmNWM2NmE0NDU4N2MzOWE5Njc0NzhiNTc1OWExZWFmYiJ9fX0="}]},minecraft:custom_name={"text":"Timeline partita","color":"#2FFAD8","italic":false}] 1

item replace block 9 -55 39 container.14 with minecraft:player_head[custom_data={headequips:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZkMjNlODcxNjU5ZGIwMTQ0MzM4NmE2ZTAzZWMxNGY5YjYyNTBkMzMxMjExYzliOWUyYTM1N2E2MzNhZThhNSJ9fX0="}]},minecraft:custom_name={"text":"Equipaggiamento giocatori","color":"#2FFAD8","italic":false}] 1

item replace block 9 -55 39 container.26 with barrier[custom_data={matchlist_back:1b},minecraft:custom_name={"text":"Torna indietro","color":"#fa2f2f","italic":false}]

# Feedback audio
execute at @s run playsound minecraft:block.vault.reject_rewarded_player ui @s ~ ~ ~ 1 1.6

# Togli la testa dal cursorse
clear @s player_head