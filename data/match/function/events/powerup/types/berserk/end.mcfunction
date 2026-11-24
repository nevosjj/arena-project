#############################################################
## Chiamata da                                             ##
## match:events/powerup/types/berserk/tick (tempo scaduto) ##
## match:events/powerup/clean (fine round o partita)       ##
## health:deaths/health (morte)                            ##
## Esecutore: il giocatore con il berserk                  ##
#############################################################

# Rimozione stato (fine del +bonus% danni)
tag @s remove powerup.berserk
scoreboard players reset @s powerup.berserk_timer

# Feedback
execute at @s run playsound block.fire.extinguish player @s ~ ~ ~ 0.8 0.8
