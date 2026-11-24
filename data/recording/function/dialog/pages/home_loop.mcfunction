############################################################
## Chiamata da recording:dialog/pages/home e da sé stessa ##
## Macro: recording:view loop (i)                         ##
## Pulsante dello slot i se c'è una partita,              ##
## poi slot precedente ((i + 6) % 7), 7 volte             ##
############################################################

$execute if data storage api.nevosjj.lobby:match_list elements[$(i)] run function recording:dialog/pages/home_button with storage recording:view loop
data modify storage recording:view loop.i set compute default integer recording:dialog/home/prev
data modify storage recording:view loop.k set compute default integer recording:dialog/loop/next_k
execute unless data storage recording:view loop{k:7} run function recording:dialog/pages/home_loop with storage recording:view loop
