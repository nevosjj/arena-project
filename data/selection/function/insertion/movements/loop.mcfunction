# Salvo indice indice
execute store result storage arenaproject:selection temporary.index int 1.0 run scoreboard players get #selection_loop temp

# Controllo se esiste un'entry valida per questo indice
execute store success score #selection_check temp run function selection:insertion/movements/check_entry with storage arenaproject:selection temporary

# Se esiste, inserimento dati abilità e oggetto, poi continuo
execute if score #selection_check temp matches 1 run function selection:insertion/movements/index with storage arenaproject:selection temporary
execute if score #selection_check temp matches 1 run function selection:insertion/movements/item with storage arenaproject:selection temporary
execute if score #selection_check temp matches 1 run return run function selection:insertion/movements/loop
execute unless score #selection_check temp matches 1 run return run function selection:insertion/movements/end