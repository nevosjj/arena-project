##########################################################
## Chiamata da recording:dialog/route                   ##
## Esecutore: il giocatore (score temp)                 ##
## Statistiche del giocatore p = recording.nav - 200,   ##
## tutte le sezioni nella stessa pagina                 ##
##########################################################

# Giocatore
scoreboard players operation @s temp = @s recording.nav
scoreboard players remove @s temp 200
execute store result storage recording:view args.p int 1.0 run scoreboard players get @s temp
data remove storage recording:view player
function recording:dialog/pages/player_load with storage recording:view args
execute unless data storage recording:view player run return run function recording:dialog/pages/stats

function recording:dialog/base/notice
data modify storage recording:view dialog.action.action.command set value "/trigger recording.nav set 2"
data modify storage recording:view dialog.title set value [{text:"",color:"gold",bold:true}]
data modify storage recording:view dialog.title[0].text set from storage recording:view player.username
execute if data storage recording:view player{winner:1b} run data modify storage recording:view dialog.title append value {text:" ♛",color:"gold"}

# Statistiche (0 dove mancano)
data modify storage recording:view stats set value {melee_inflicted:0,best_combo:0,ability_inflicted:0,summon_damage_inflicted:0,melee_damage_received:0,ability_damage_received:0,total_damage_received:0,damage_halved:0,instant_heal_received:0,regen_healed:0,regen_lost:0,total_heal_received:0,total_xp_generated:0,timer_xp_generated:0,melee_xp_generated:0,xp_wasted:0,powerup_picked:0}
data modify storage recording:view stats merge from storage recording:view player.stats
function recording:dialog/pages/player_body with storage recording:view stats

function recording:dialog/show with storage recording:view
