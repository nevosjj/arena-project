#################################################
## Chiamato da skills:list/utility/switch/init ##
#################################################

# Crea il bersaglio
$tag @e[type=player,limit=1,sort=nearest,tag=utility.skill_target.$(ID)] add switch_target.$(ID)

# Rimuovi tag al bersaglio
$tag @e[type=player,limit=1,sort=nearest,tag=utility.skill_target.$(ID)] remove utility.skill_target.$(ID)

# Aggiungi tag utente
$tag @e[type=player,limit=1,distance=..2,sort=nearest,tag=switch_user] add switch_user.$(ID)

# Impostazione data suono
data modify entity @s data.soundName set value "minecraft:ui.toast.in"
data modify entity @s data.soundPitch set value "1.25"
scoreboard players set @s sound 35

# Inizializza tick
tag @s add ready