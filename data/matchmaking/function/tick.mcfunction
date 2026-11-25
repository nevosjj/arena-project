#################################################################
## Chiamata da root:ticks/main                                 ##
## Punto d'ingresso unico del matchmaking: ogni modalità (oggi ##
## solo 1v1) o la futura stanza pre-partita aggiunge qui la    ##
## propria riga, con una sola scansione delle sue interaction. ##
#################################################################

# 1v1: code con le interaction della lobby
execute as @e[type=interaction,tag=matchmaking.1v1] run function matchmaking:1v1/tick
