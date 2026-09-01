## Orologi

# QUEUE
execute if stopwatch match:queue 3.. run function matchmaking:1v1/check

# Suono di selezione
execute if stopwatch match:sound 1.. run function match:events/sound

# Pausa tra un round e l'altro
execute if stopwatch match:break 10.. run function match:events/end_selection

# Primo timer di selezione (25 qui, poi altri 5 di apertura, totale 30)
execute if stopwatch match:first_timer 25.. run function match:events/low_timer

# Apertura cancelli
execute if stopwatch match:map_editor/opening 5.. run function match:events/end_selection

# Overtime, impostato dinamicamente in futuro mappa per mappa.
# Per ora non è impostato dinamicamente!
execute if stopwatch match:overtime 210.. run function match:events/overtime with storage match_data:1v1 list.1v1

# Pausa dopo che un round è finito al seguito della morte di qualcuno
# Dopo crea un nuovo round, se disponibile
execute if stopwatch match:round_break 3.. run function match:events/new_round with storage arenaproject:game_memory temporary

# Pausa dopo che una partita è stata vinta
execute if stopwatch match:win_break 5.. run function match:end/teleport