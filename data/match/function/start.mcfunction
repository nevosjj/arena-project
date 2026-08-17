# Booleana match: attivo
scoreboard players set #match bool 1

# Pulizia inventario
clear @a[tag=in_game]

# Conteggio stopwatch
stopwatch create match:first_timer
stopwatch create match:sound

# Punteggio timer
scoreboard players set #match counter 30

# Punteggi costanti
scoreboard players set #constant.100 temp 100

# Bossbar timer
bossbar add match:timer [{"text":"Selezione...","color":"light_purple"}]
bossbar set match:timer style notched_10
bossbar set match:timer color white
bossbar set match:timer max 30
bossbar set match:timer players @a[tag=in_game]
bossbar set match:timer value 30
bossbar set match:timer visible true

# Sidebar
function match:display/setup
function match:display/update

# Team
team add in_game "In gioco"
team modify in_game collisionRule never
team modify in_game color red
team modify in_game friendlyFire true
team modify in_game nametagVisibility always
team join in_game @a[tag=in_game]

# Inserimento chest di HUD selezione
item replace entity @a hotbar.4 with chest

# Quantità giocatori
execute as @a[tag=in_game] run scoreboard players add #match player.amount 1

# Inserimento tag di selezione
tag @a[tag=in_game] add selecting
tag @a[tag=in_game] add must_select.offensive
tag @a[tag=in_game] add must_select.utility
tag @a[tag=in_game] add must_select.support
tag @a[tag=in_game] add must_select.ultimate
scoreboard players set @a[tag=in_game] counter.selection 0

# Inserimento score
scoreboard players set @a[tag=in_game] recent_damage 0