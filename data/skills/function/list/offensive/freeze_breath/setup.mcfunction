#############################################################
## Chiamata da skills:list/offensive/freeze_breath/init    ##
## Esecutore e posizione: il marker | Rotazione: il caster ##
#############################################################

# Parametri della spirale (technical.shape + distance, copiati nel marker da assign_data)
    # Tutti i calcoli leggono da qui: skills:freeze_breath/* (context_*_provider)
data modify storage arenaproject:game_memory tempFreezingBreath set from entity @s data.shape
data modify storage arenaproject:game_memory tempFreezingBreath.distance set from entity @s data.distance
data modify storage arenaproject:game_memory tempFreezingBreath.k set value 0

# Numero di passi: distance / stepLength (arrotondato)
data modify storage arenaproject:game_memory tempFreezingBreath.steps set compute default integer skills:freeze_breath/steps

# Impostazione teamID
execute store result score @s teamID run data get entity @s data.teamID

# Il marker prende la visuale del caster (pitch compreso): l'asse della spirale è dove guardi
tp @s ~ ~ ~ ~ ~

# Selezione unica dei bersagli
    # Raggio che contiene l'intero cono: passi * (stepLength + rangeGrowth)
data modify entity @s data.range set compute default float skills:freeze_breath/select_range
function skills:auxiliary/targeting/select_enemies with entity @s data

# Ricorsione
execute at @s run function skills:list/offensive/freeze_breath/recursion

# Chiusura
function skills:auxiliary/targeting/clear
function skills:list/offensive/freeze_breath/end with entity @s data
