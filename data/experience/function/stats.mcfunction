##############################################################
## Chiamata da experience:gain || experience:attack         ##
## Esecutore: il giocatore che sta per ricevere l'XP        ##
## Input: #xp.gain temp (XP che sta per ricevere)           ##
## Macro: objective (poststat dove sommare l'XP netta)      ##
## Conta solo l'XP che entra fino a 100, il resto è scarto. ##
## Va chiamata PRIMA di aumentare l'XP.                     ##
##############################################################

# Spazio rimasto fino a 100 (mai negativo)
scoreboard players set #xp.space temp 100
scoreboard players operation #xp.space temp -= @s experience_level
execute if score #xp.space temp matches ..-1 run scoreboard players set #xp.space temp 0

# XP netta = il minore tra XP ricevuta e spazio rimasto
scoreboard players operation #xp.net temp = #xp.gain temp
scoreboard players operation #xp.net temp < #xp.space temp
$scoreboard players operation @s poststat.$(objective) += #xp.net temp

# Scarto = XP ricevuta - XP netta
scoreboard players operation #xp.gain temp -= #xp.net temp
scoreboard players operation @s poststat.xp_wasted += #xp.gain temp

# Pulizia
scoreboard players reset #xp.gain temp
scoreboard players reset #xp.space temp
scoreboard players reset #xp.net temp
