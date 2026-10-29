############################################
## Chiamato da skills:root/ticks/skill    ##
############################################

# temp++
scoreboard players add @s temp 1

# Controllo
$execute if score @s temp matches $(charge) run function skills:list/utility/switch/end with entity @s data

# Feedback sonoro
function skills:auxiliary/sound with entity @s data

# Feedback particellare (utente)
$execute at @e[type=player,limit=1,sort=nearest,tag=switch_user.$(ID)] run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force

# Feedback particellare (bersaglio)
$execute at @e[type=player,limit=1,sort=nearest,tag=switch_target.$(ID)] run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 1 force