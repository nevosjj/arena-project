################################################################################
## Chiamata da skills:auxiliary/targeting/search_heal o da effetti custom     ##
## Uso: function skills:auxiliary/targeting/select_allies with entity @s data ##
## Esecutore e posizione: il finder | Data: range, abilityName, ID, teamID    ##
## Tag "target.selected" a TUTTI gli alleati nel raggio (caster incluso).     ##
## Esclude "nome_abilita_ID.victim". Va SEMPRE chiusa con targeting/clear.    ##
################################################################################

# Nessun giocatore vicino, niente da fare
$execute unless entity @a[tag=in_game,gamemode=!spectator,distance=..$(range)] run return fail

# Fonte
function skills:auxiliary/targeting/source

# Selezione
$execute as @a[tag=in_game,gamemode=!spectator,distance=..$(range),tag=!$(abilityName)_$(ID).victim] \
    if score @s teamID = #source teamID run tag @s add target.selected
