#####################################################################################
## Chiamata dalle abilità che hanno bisogno di un raycast non condizionale         ##
## Esecutore: l'entità che viaggia (es. marker) | Posizione e rotazione: le sue    ##
## Uso: execute as <entità> at @s run function skills:auxiliary/raycast/start      ##
##          {step:"<funzione chiamata ad ogni passo>"}                             ##
## Legge data.range dell'esecutore e imposta raycast = range * 3 (passi da 1/3).   ##
## Per una gittata presa da altrove: imposta tu "raycast" e chiama la recursion.   ##
## Ritorna 1 se fermato da un muro o dallo step, fail se ha esaurito la gittata.   ##
## L'entità resta nel punto d'arrivo: ucciderla/usarla è compito del chiamante.    ##
#####################################################################################

# Gittata in terzi di blocco
execute store result score @s raycast run data get entity @s data.range 3

# Inizio ricorsione
$return run function skills:auxiliary/raycast/recursion {step:"$(step)"}
