######################################################################
## Chiamata da skills:auxiliary/targeting/apply_heal (regen_heal)   ##
## || match:events/powerup/types/heal/pick                          ##
## Esecutore: il giocatore che riceve la cura rigenerativa          ##
## Macro: power                                                     ##
## Somma $(power) a stat.regeneration_pool (le pool si sommano).    ##
######################################################################

$scoreboard players add @s stat.regeneration_pool $(power)
