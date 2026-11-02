############
# INFO
# CHIAMATA DA skills:auxiliary/targeting/select_*
# Esecutore: il finder (proiettile, marker, ecc.)
############
# Registra il finder come fonte della ricerca:
#   - tag "target.source"     -> per riferirsi al finder esatto (es. kill del proiettile)
#   - storage targetSource    -> i suoi data, letti da danni, cure e conseguenze
#   - #source teamID          -> per confrontare la squadra dei bersagli
############

tag @s add target.source
data modify storage arenaproject:game_memory targetSource set from entity @s data
execute store result score #source teamID run data get entity @s data.teamID
