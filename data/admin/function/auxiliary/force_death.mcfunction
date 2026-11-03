######################################################
## Chiamata da admin:main/round_win || match_win    ##
## Eseguita come e alla posizione del perdente      ##
## Azzera la vita e avvia il flusso di morte        ##
######################################################

scoreboard players set @s stat.current_health 0
function health:deaths/health
