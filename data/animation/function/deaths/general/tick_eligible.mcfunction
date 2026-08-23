##############################
## Chiamata da animation:deaths/general/create_mannequin
## La funzione pulisce certi dati e avvia la possibilità di runnare la funzione tick su se stessa
###############################

# Timer di 3s (SEMPRE)
scoreboard players set @s animation 60

# Rimozione tag di protezione per il bersagliamento del giusto manichino ogni volta che si chiama da create_mannequin questa f(x)
tag @s remove new_death_mannequin

# Pulizia animationTemp
data remove storage arenaproject:game_memory animationTemp

# Aggiunta tag di abilitazione tick
tag @s add death_mannequin.tick