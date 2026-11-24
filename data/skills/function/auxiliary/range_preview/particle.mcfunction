#################################################################
## Chiamata da skills:auxiliary/range_preview/show             ##
## Esecutore e posizione: il giocatore | Macro: range          ##
## Punto arancione a fine gittata, dagli occhi lungo la vista. ##
#################################################################

$execute anchored eyes positioned ^ ^ ^$(range) run particle dust{color:[1.0,0.5,0.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @s
