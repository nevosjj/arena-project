########################################################################
## Chiamata dalle abilità con evocazioni (es. a fine durata)          ##
## Esecutore: il cervello                                             ##
## Rimuove la hitbox SENZA distruzione: destroyed NON viene chiamata. ##
## Cervello e visual restano a carico dell'abilità.                   ##
########################################################################

scoreboard players operation #summon summon.id = @s summon.id
execute as @e[type=interaction,tag=player_summon] if score @s summon.id = #summon summon.id run function skills:auxiliary/summon/kill
scoreboard players reset #summon summon.id
