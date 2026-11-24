##########################################################
## Chiamata da root:ticks/main                          ##
## Esecutore: il giocatore con recording.nav >= 1       ##
## Un pulsante del dialog ha usato il trigger:          ##
## mostra la pagina e riabilita il trigger              ##
##########################################################

function recording:dialog/route
scoreboard players reset @s recording.nav
scoreboard players enable @s recording.nav
