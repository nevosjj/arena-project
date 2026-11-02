#################################################################################
## Chiamata da root:ticks/skills                                               ##
## Esecutore e posizione: il proiettile | Macro: i suoi data                   ##
## Attraversa i nemici, cura il primo alleato che tocca.                       ##
## Lo uccide la heal_consequence, oppure projectile_end (muro o fine gittata). ##
#################################################################################

scoreboard players add @s temp 1
execute if function skills:auxiliary/wall_check run return run function skills:list/support/regen_dispenser/projectile_end
$execute if score @s temp matches $(distance).. run return run function skills:list/support/regen_dispenser/projectile_end

# Collisione misurata all'altezza del busto (il proiettile mira agli occhi)
execute positioned ~ ~-0.9 ~ run function skills:auxiliary/targeting/search_heal_single with entity @s data
