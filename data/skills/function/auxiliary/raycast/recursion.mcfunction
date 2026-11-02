#####################################################################################
## Chiamata da skills:auxiliary/raycast/start e da sé stessa                       ##
## Esecutore e posizione: l'entità che viaggia | Macro: step                       ##
## Score raycast = passi rimasti (1 passo = 1/3 di blocco).                        ##
## Lo step viene eseguito prima di ogni avanzamento: se ritorna 1, il raycast si   ##
## ferma lì (utile per controlli specifici dell'abilità).                          ##
#####################################################################################

# Caso base: gittata esaurita
execute if score @s raycast matches ..0 run return fail

# Muro davanti: si ferma prima di entrarci
execute unless block ^ ^ ^0.333333 #skills:raycast run return 1

# Passo dell'abilità
$execute if function $(step) run return 1

# Avanzamento
tp @s ^ ^ ^0.333333

# raycast--
scoreboard players remove @s raycast 1

# Ricorsione
$execute at @s run return run function skills:auxiliary/raycast/recursion {step:"$(step)"}
