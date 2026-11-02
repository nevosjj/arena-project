###################################################################################
## Chiamata da health:summon/melee_hit e skills:auxiliary/targeting/apply_damage ##
## Esecutore: una hitbox "player_summon"                                         ##
###################################################################################

execute if score @s summon.health matches ..0 run function health:summon/death
