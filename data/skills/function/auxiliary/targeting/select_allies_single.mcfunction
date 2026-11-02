############
# INFO
# Uso: function skills:auxiliary/targeting/select_allies_single with entity @s data
# Esecutore e posizione: il finder
# Data richiesti: range, abilityName, ID, teamID
############
# Assegna "target.selected" SOLO all'alleato più vicino al finder (caster incluso).
# Esclude chi ha il tag "nome_abilita_ID.victim".
# Va SEMPRE chiusa con skills:auxiliary/targeting/clear
############

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
