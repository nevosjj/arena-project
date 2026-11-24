##########################################################
## Chiamata da recording:dialog/route                   ##
## Esecutore: il giocatore                              ##
## Copia la partita dello slot @s recording.match       ##
## in recording:view match (manca se lo slot è vuoto)   ##
##########################################################

data remove storage recording:view match
execute unless score @s recording.match matches 0..6 run return fail
execute store result storage recording:view args.i int 1.0 run scoreboard players get @s recording.match
function recording:dialog/load_slot with storage recording:view args
