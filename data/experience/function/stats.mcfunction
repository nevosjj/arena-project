##############################################################
## Chiamata da experience:gain || experience:attack         ##
## Esecutore: il giocatore che sta per ricevere l'XP        ##
## Macro: storage arenaproject:game_memory xpStats          ##
##   objective (poststat dove sommare l'XP netta)           ##
##   gain (XP che sta per ricevere, letta dai provider)     ##
## Conta solo l'XP che entra fino a 100, il resto è scarto. ##
## Va chiamata PRIMA di aumentare l'XP.                     ##
##############################################################

# XP netta = min(gain, max(0, 100 - experience_level)) (provider experience:xp/net)
$execute store result score @s poststat.$(objective) run compute entity @s integer {type:"minecraft:add",inputs:[{type:"minecraft:score",score:"poststat.$(objective)",target:{type:"context",target:"this"},fallback:0},"experience:xp/net"]}

# Scarto = gain - XP netta
execute store result score @s poststat.xp_wasted run compute entity @s integer experience:xp/wasted_total

# Pulizia
data remove storage arenaproject:game_memory xpStats
