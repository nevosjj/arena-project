##########################################################
## Chiamata da recording:dialog/nav                     ##
## Esecutore: il giocatore                              ##
## Codici di recording.nav:                             ##
## 1 Home, 2 Statistiche, 3 Equipaggiamento,            ##
## 4 Timeline, 5 Partita (quella scelta),               ##
## 100+i scelta della partita (slot i della lista),     ##
## 200+p giocatore p, 300+r round r (indici)            ##
## La partita scelta resta in @s recording.match        ##
##########################################################

# Home
execute if score @s recording.nav matches 1 run return run function recording:dialog/pages/home

# Scelta della partita
execute if score @s recording.nav matches 100..106 run scoreboard players operation @s recording.match = @s recording.nav
execute if score @s recording.nav matches 100..106 run scoreboard players remove @s recording.match 100

# Partita scelta: se non c'è più si torna alla Home
function recording:dialog/load_match
execute unless data storage recording:view match.match_id run return run function recording:dialog/pages/home

# Pagine della partita
execute if score @s recording.nav matches 100..106 run return run function recording:dialog/pages/match
execute if score @s recording.nav matches 5 run return run function recording:dialog/pages/match
execute if score @s recording.nav matches 2 run return run function recording:dialog/pages/stats
execute if score @s recording.nav matches 3 run return run function recording:dialog/pages/equipment
execute if score @s recording.nav matches 4 run return run function recording:dialog/pages/timeline
execute if score @s recording.nav matches 200..299 run return run function recording:dialog/pages/player
execute if score @s recording.nav matches 300..399 run return run function recording:dialog/pages/round

# Codice sconosciuto: libera il client che aspetta la risposta
dialog clear @s
