# Controlla se c'è un entry.
$execute if data storage arenaproject:selection temporary.skills[$(index)] run return run scoreboard players add #selection_loop temp 1
$execute unless data storage arenaproject:selection temporary.skills[$(index)] run return fail