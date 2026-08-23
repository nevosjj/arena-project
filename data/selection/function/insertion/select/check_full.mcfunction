# Controlla se ha finito di prendere tutte le abilità
execute if score @s counter.selection matches 4.. run function selection:insertion/select/finished

# Se tutti hanno selezionato (temp = quantità di giocatori che hanno selezionato tutte le abilità);
    # e se si è sotto i 25 secondi dell'inizio (su 30 totali, gli altri 5 sono decisi dallo stopwatch match:map_editor/opening)
        # allora forza l'inizio.
execute if stopwatch match:first_timer ..25 if score #match temp = #match player.amount run function match:low_timer