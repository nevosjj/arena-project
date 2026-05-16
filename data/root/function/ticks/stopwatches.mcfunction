## Orologi

# QUEUE
execute if stopwatch match:queue 3.. run function matchmaking:1v1/check

# Suono di selezione
execute if stopwatch match:sound 1.. run function match:sound

# Pausa tra un round e l'altro
execute if stopwatch match:break 10.. run function match:end_selection

# Primo timer di selezione (25 qui, poi altri 5 di apertura, totale 30)
execute if stopwatch match:first_timer 25.. run function match:low_timer

# Apertura cancelli
execute if stopwatch match:opening 5.. run function match:end_selection

# Overtime, impostato dinamicamente in futuro mappa per mappa.
# Per ora non è impostato dinamicamente!
execute if stopwatch match:overtime 210.. run function match:overtime
