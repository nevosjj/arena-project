## Orologi

# QUEUE (fuori partita)
execute if stopwatch match:queue 3.. run function matchmaking:1v1/check

# Orologi della partita: solo a partita attiva (#match bool, da match:events/start a match:end/cleanup)
execute if score #match bool matches 1 run function root:ticks/match_stopwatches

# Pausa dopo che una partita è stata vinta
# Fuori dal controllo #match bool: match:end/cleanup lo resetta prima che scatti
execute if stopwatch match:win_break 5.. run function match:end/teleport
