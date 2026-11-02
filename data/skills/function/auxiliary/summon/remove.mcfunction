########################################################################
## Chiamata dalle abilità con evocazioni (es. a fine durata)          ##
## Esecutore: il cervello                                             ##
## Rimuove la hitbox SENZA distruzione: destroyed NON viene chiamata. ##
## Cervello e visual restano a carico dell'abilità.                   ##
########################################################################

scoreboard players operation #summon summon.ID = @s summon.ID
execute at @s as @e[type=interaction,tag=player_summon,distance=..16] if score @s summon.ID = #summon summon.ID run function skills:auxiliary/summon/kill
scoreboard players reset #summon summon.ID
