# Assegnazione tag finder
tag @s add honey_blessing.finder

# Marker range abilità
$summon marker ~ ~ ~ {Tags:[range.marker],data:{particles:heart,distance:$(range)}}
execute as @e[type=marker,limit=1,tag=range.marker,distance=..2] at @s run function skills:auxiliary/ability_range with entity @s data

# Ricerca 
function skills:auxiliary/search_heal \
    with entity @s data

# Cleanup
kill @s