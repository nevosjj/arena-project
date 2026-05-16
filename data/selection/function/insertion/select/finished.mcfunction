## INFO
## Called by selection/insertion/select/check_full

# Feedback
tellraw @a [{"selector":"@s","color":"gold"},{"text":" ha finito di scegliere.","color":"gray"}]

# Aumento di 1 la quantità di giocatori che hanno finito di scegliere (temp = quantità giocatori)
scoreboard players add #match temp 1

# Reset punteggio
scoreboard players reset @s counter.selection

# Tag per designare chi ha finito (per evitare di essere selezionato durante la selezione di chi non ha finito di scegliere le abilità)
tag @s add done_selecting