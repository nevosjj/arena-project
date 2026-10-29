########################################################
## La funzione cerca il bersaglio di Catena Vampirica ##
########################################################

# Crea il bersaglio
$tag @e[type=player,limit=1,sort=nearest,tag=support.skill_target.$(ID)] add vampiric_chain_target.$(ID)

# Rimuovi tag al bersaglio
$tag @e[type=player,limit=1,sort=nearest,tag=support.skill_target.$(ID)] remove support.skill_target.$(ID)

# Aggiungi tag utente
$tag @e[type=player,limit=1,distance=..2,sort=nearest,tag=vampiric_chain_user] add vampiric_chain_user.$(ID)

# Inizializza tick
tag @s add ready