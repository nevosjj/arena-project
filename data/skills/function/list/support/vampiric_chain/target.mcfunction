########################################################
## La funzione cerca il bersaglio di Catena Vampirica ##
########################################################

# Dai il tag al proprietario
$tag @e[type=player,distance=..2,limit=1,sort=nearest,tag=vampiric_chain.temp] add vampiric_chain_user.ID_$(ID)

# Dai il tag di target
$tag @e[type=player,distance=..$(range),limit=1,sort=nearest,tag=!vampiric_chain.temp] add vampiric_chain_target.ID_$(ID)

# Rimozione tag temp proprietario
tag @e[type=player,distance=..2,limit=1,sort=nearest,tag=vampiric_chain.temp] remove vampiric_chain.temp