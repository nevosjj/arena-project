#######################################
## Funzione che reimposta la chest   ##
## in modo che abbia un look default ##
## quando torni indietro             ##
#######################################

# Aspetto della chest
function recording:insert/put_glass
function recording:insert/everything

# Rimozione tasto dalla mano del giocatore
clear @s barrier

# Feedback
playsound minecraft:block.vault.deactivate ui @s ~ ~ ~ 10 1.15

# Riempimento spazio del bottone
item replace block 9 -55 39 container.26 with black_stained_glass_pane

# Rimozione indice del cursorse
data remove storage api.nevosjj.lobby:match_list temp.cursorIndex