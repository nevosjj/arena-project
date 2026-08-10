############
# INFO
# CHIAMATA DA skills/list/tipo_abilita/nome_abilita/init
############

# Cerca bersagli da curare
# Colui che cerca è il nome_abilita.finder, ricordatelo
$execute as @e[type=player,distance=..$(range)] \
    if score @s teamID = @e[tag=$(abilityName).finder,limit=1,distance=..$(range),sort=nearest] teamID \
        run function skills:auxiliary/apply_heal \
            with entity @e[tag=$(abilityName).finder,distance=..$(range),sort=nearest,limit=1] data