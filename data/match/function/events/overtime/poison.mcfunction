######################################################
## Chiamato da match:display/neon                   ##
## La funzione avvelena i giocatori del danno       ##
## basato sullo storage matchdata                   ##
######################################################

# Feedback
playsound minecraft:entity.player.hurt_sweet_berry_bush ui @s ~ ~ ~ 0.1 2 0.1

# Update display
function match:display/update

# Riduzione vita
scoreboard players remove @s stat.current_health 1