######################################################
## Chiamata da comando admin                        ##
## /function admin:main/cancel_match                ##
## Chiude la partita in qualsiasi fase senza        ##
## vincitore e senza registrarla, poi riporta       ##
## tutti in lobby                                   ##
######################################################

# Controllo partita in corso
execute unless entity @a[tag=in_game] run tellraw @s [{"text":"ADMIN","color":"dark_red","bold":true},{"text":" > ","color":"dark_gray","bold":false},{"text":"Nessuna partita in corso.","color":"gray","bold":false}]
execute unless entity @a[tag=in_game] run return fail

## FASI IN CORSO
# Overtime
function match:events/overtime/stop

# Stopwatch non gestiti da match:end/cleanup
stopwatch remove match:first_timer
stopwatch remove match:map_editor/opening
stopwatch remove match:win_break

# Bossbar (selezione / apertura cancelli)
bossbar remove match:timer

# Manichini della morte (altrimenti a fine animazione chiamano check_life)
kill @e[type=mannequin,tag=death_mannequin]

# Minecart di selezione (i block_display li uccide già cleanup)
execute as @e[type=block_display,tag=selection_block_display] at @s run kill @e[type=chest_minecart,limit=1,sort=nearest,distance=..3]

## CHIUSURA
# Pulizia (come a fine partita, ma senza recording:actions/start_recording)
execute as @a[tag=in_game] run function match:end/cleanup

# Ritorno in lobby e rimozione mappa
function match:end/teleport

# Feedback
tellraw @a [{"text":"> ","color":"gray","bold":true},{"text":"Partita annullata da un admin.","color":"red","bold":false}]
