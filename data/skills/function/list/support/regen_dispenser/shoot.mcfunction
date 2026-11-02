#######################################################################
## Chiamata da skills:list/support/regen_dispenser/tick              ##
## Esecutore e posizione: il cervello | Macro: i suoi data           ##
## Mira all'alleato più vicino entro aimRange (anche dietro i muri). ##
## Senza bersaglio non ricarica: riprova al tick dopo (attesa).      ##
#######################################################################

# Bersaglio (range = aimRange, solo per la mira)
$function skills:auxiliary/targeting/select_allies_single {range:$(aimRange),abilityName:"$(abilityName)",ID:$(ID)}

# Nessun bersaglio: attesa
execute unless entity @a[tag=target.selected] run return run function skills:auxiliary/targeting/clear

# Proiettile verso il bersaglio
execute facing entity @a[tag=target.selected,limit=1] eyes run function skills:list/support/regen_dispenser/projectile with entity @s data

# Chiusura ricerca e ricarica
function skills:auxiliary/targeting/clear
$scoreboard players set @s counter.support $(delay)
