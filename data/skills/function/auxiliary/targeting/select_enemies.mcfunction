#####################################################################################################
## Chiamata da skills:auxiliary/targeting/search_damage o da effetti custom (es. magnetic_impulse) ##
## Uso: function skills:auxiliary/targeting/select_enemies with entity @s data                     ##
## Esecutore e posizione: il finder | Data: range, abilityName, ID, teamID                         ##
## Data opzionale: ignoreSummons:1b -> ignora le evocazioni nemiche                                ##
## Tag "target.selected" a TUTTI i nemici nel raggio (giocatori ed evocazioni).                    ##
## Esclude "nome_abilita_ID.victim". Va SEMPRE chiusa con targeting/clear.                         ##
#####################################################################################################

# Nessun bersaglio vicino, niente da fare
$execute unless entity @a[tag=in_game,gamemode=!spectator,distance=..$(range)] \
    unless entity @e[type=interaction,tag=player_summon,distance=..$(range)] run return fail

# Fonte
function skills:auxiliary/targeting/source

# Selezione giocatori
$execute as @a[tag=in_game,gamemode=!spectator,distance=..$(range),tag=!$(abilityName)_$(ID).victim] \
    unless score @s teamID = #source teamID run tag @s add target.selected

# Selezione evocazioni
$execute unless data entity @s data{ignoreSummons:1b} as @e[type=interaction,tag=player_summon,distance=..$(range),tag=!$(abilityName)_$(ID).victim] \
    unless score @s teamID = #source teamID run tag @s add target.selected
