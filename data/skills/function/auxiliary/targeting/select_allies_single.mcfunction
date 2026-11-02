#######################################################################################
## Chiamata da skills:auxiliary/targeting/search_heal_single o da effetti custom     ##
## Uso: function skills:auxiliary/targeting/select_allies_single with entity @s data ##
## Esecutore e posizione: il finder | Data: range, abilityName, ID, teamID           ##
## Tag "target.selected" SOLO all'alleato più vicino (caster incluso).               ##
## Esclude "nome_abilita_ID.victim". Va SEMPRE chiusa con targeting/clear.           ##
#######################################################################################

# Nessun giocatore vicino, niente da fare
$execute unless entity @a[tag=in_game,gamemode=!spectator,distance=..$(range)] run return fail

# Fonte
function skills:auxiliary/targeting/source

# Candidati
$execute as @a[tag=in_game,gamemode=!spectator,distance=..$(range),tag=!$(abilityName)_$(ID).victim] \
    if score @s teamID = #source teamID run tag @s add target.candidate

# Selezione del più vicino
tag @a[tag=target.candidate,sort=nearest,limit=1] add target.selected
tag @a[tag=target.candidate] remove target.candidate
