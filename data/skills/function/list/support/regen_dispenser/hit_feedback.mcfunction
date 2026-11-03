#######################################
## Chiamata da health:summon/hit     ##
## La funzione crea feedback         ##
## quando il dispenser viene colpito ##
#######################################

# Feedback sonoro
playsound entity.breeze.hurt player @a ~ ~ ~ 1.5 1.7
playsound block.copper_grate.hit player @a ~ ~ ~ 2 1.4

# Feedback particellare
particle cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.1 3 force