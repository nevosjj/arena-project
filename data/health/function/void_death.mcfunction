#############################################################
## La funzione controlla semplicemente, in modo dinamico   ##
## se i giocatori cadono sotto una certa y in alcune mappe ##
#############################################################

# Ottenimento posizione da Pos[1] a void
execute store result score @s void run data get entity @s Pos[1]

# Controllo
$execute if score @s void matches ..$(immediateDeath) run function health:death