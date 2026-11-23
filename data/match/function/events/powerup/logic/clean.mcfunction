###########################################################
## Chiamata da                                           ##
## match:events/round_pause                              ##
## match:end/win                                         ##
## admin:main/cancel_match                               ##
## Ferma il ciclo (stopwatch match:powerup/*): anteprima ##
## e potenziamento in campo spariscono, i berserk attivi ##
## finiscono.                                            ##
###########################################################

# Stopwatch del ciclo
stopwatch remove match:powerup/cycle
stopwatch remove match:powerup/incoming
stopwatch remove match:powerup/life

# Entità
kill @e[type=marker,tag=powerup.brain]
kill @e[type=block_display,tag=powerup.visual]

# Berserk attivi (i marker degli anelli muoiono da soli)
execute as @a[tag=powerup.berserk] run function match:events/powerup/types/berserk/end

# Sidebar
function match:display/powerup/none
