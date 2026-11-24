############################################################################
## Chiamata da root:ticks/main (ogni tick, se stat.regeneration_pool > 0) ##
## Esecutore: il giocatore che rigenera                                   ##
## Scala stat.regeneration_timer: a 0 fa un impulso                       ##
## (health:regeneration/heal) e lo riporta a                              ##
## stat.regeneration_frequency.                                           ##
## Timer non impostato = impulso subito (pool appena riempita).           ##
############################################################################

scoreboard players remove @s stat.regeneration_timer 1
execute if score @s stat.regeneration_timer matches 1.. run return fail

scoreboard players operation @s stat.regeneration_timer = @s stat.regeneration_frequency
function health:regeneration/heal
