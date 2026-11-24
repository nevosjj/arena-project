######################################################################
## Chiamata da skills:auxiliary/targeting/apply_heal (golden_apple) ##
## || match:events/powerup/types/heal/pick                          ##
## Esecutore: il giocatore che riceve la cura rigenerativa          ##
## Input: storage arenaproject:game_memory regen.add                ##
## Somma regen.add a stat.regeneration_pool (le pool si sommano).   ##
######################################################################

execute store result score @s stat.regeneration_pool run compute entity @s integer health:regen/added_pool
data remove storage arenaproject:game_memory regen
