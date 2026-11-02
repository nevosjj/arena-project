########################################################################################
## Chiamata dai proiettili (es. skills:list/offensive/cookie_blaster/tick)            ##
## Uso: execute if function skills:auxiliary/wall_check run ...                       ##
## Ritorna 1 se attorno alla posizione c'è un blocco solido (non in #skills:raycast). ##
## Ritorna fail altrimenti.                                                           ##
########################################################################################

# Lati
execute unless block ~0.3 ~ ~ #skills:raycast run return 1
execute unless block ~-0.3 ~ ~ #skills:raycast run return 1
execute unless block ~ ~ ~0.3 #skills:raycast run return 1
execute unless block ~ ~ ~-0.3 #skills:raycast run return 1

# Soffitto e pavimento (un item a terra ha la Y esattamente sulla superficie)
execute unless block ~ ~0.3 ~ #skills:raycast run return 1
execute unless block ~ ~-0.1 ~ #skills:raycast run return 1

return fail
