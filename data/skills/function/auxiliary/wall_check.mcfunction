############
# INFO
# Controlla se attorno alla posizione c'è un blocco solido (non in #skills:raycast)
# Ritorna 1 se tocca un muro, fail altrimenti
# Uso: execute if function skills:auxiliary/wall_check run ...
############

# Lati
execute unless block ~0.3 ~ ~ #skills:raycast run return 1
execute unless block ~-0.3 ~ ~ #skills:raycast run return 1
execute unless block ~ ~ ~0.3 #skills:raycast run return 1
execute unless block ~ ~ ~-0.3 #skills:raycast run return 1

# Soffitto e pavimento (un item a terra ha la Y esattamente sulla superficie)
execute unless block ~ ~0.3 ~ #skills:raycast run return 1
execute unless block ~ ~-0.1 ~ #skills:raycast run return 1

return fail
