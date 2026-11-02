############################################################
## Chiamata da root:ticks/skills                          ##
## Esecutore e posizione: ogni evocazione "player_summon" ##
## Scala gli iframes, legge i melee.                      ##
############################################################

# Iframes
execute if score @s summon.iframes matches 1.. run scoreboard players remove @s summon.iframes 1

# Melee
execute if data entity @s attack run function health:summon/melee
