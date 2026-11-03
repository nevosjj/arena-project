############################################
## Chiamata da root:ticks/main            ##
## Esecutore: il giocatore con il berserk ##
############################################

scoreboard players remove @s powerup.berserk_timer 1
execute if score @s powerup.berserk_timer matches ..0 run function match:events/powerup/types/berserk/end
