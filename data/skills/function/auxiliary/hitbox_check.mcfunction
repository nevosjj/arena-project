#####################################################################################
## Chiamata dagli step dei raycast (es. skills:list/utility/end_teleport/step)     ##
## Uso: execute positioned <piedi> if function skills:auxiliary/hitbox_check ...   ##
## Ritorna 1 se la hitbox di un giocatore (0.6 x 1.8) con i piedi nella posizione  ##
## tocca un blocco solido (non in #skills:raycast). Ritorna fail altrimenti.       ##
## Controlla i 4 spigoli verticali a piedi, metà altezza e testa.                  ##
#####################################################################################

# Piedi
execute unless block ~0.299 ~ ~0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~ ~0.299 #skills:raycast run return 1
execute unless block ~0.299 ~ ~-0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~ ~-0.299 #skills:raycast run return 1

# Metà altezza
execute unless block ~0.299 ~0.9 ~0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~0.9 ~0.299 #skills:raycast run return 1
execute unless block ~0.299 ~0.9 ~-0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~0.9 ~-0.299 #skills:raycast run return 1

# Testa
execute unless block ~0.299 ~1.799 ~0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~1.799 ~0.299 #skills:raycast run return 1
execute unless block ~0.299 ~1.799 ~-0.299 #skills:raycast run return 1
execute unless block ~-0.299 ~1.799 ~-0.299 #skills:raycast run return 1

return fail
