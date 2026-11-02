#######################################################################################
## Chiamata da skills:list/support/regen_dispenser/tick                              ##
## Esecutore: l'evocazione | Posizione: il centro del dispenser | Macro: i suoi data ##
## Mira all'alleato più vicino entro range (anche dietro i muri).                    ##
## Senza bersaglio non ricarica: riprova al tick dopo (attesa).                      ##
#######################################################################################

# Bersaglio: alleato più vicino entro range (i data dell'evocazione bastano al targeting)
function skills:auxiliary/targeting/select_allies_single with entity @s data

# Nessun bersaglio: attesa
execute unless entity @a[tag=target.selected] run return run function skills:auxiliary/targeting/clear

# Proiettile verso il bersaglio
execute facing entity @a[tag=target.selected,limit=1] eyes run function skills:list/support/regen_dispenser/projectile with entity @s data

# Chiusura ricerca e ricarica
function skills:auxiliary/targeting/clear
$scoreboard players set @s counter.support $(delay)
