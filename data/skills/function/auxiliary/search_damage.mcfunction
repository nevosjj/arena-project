############
# INFO
# CHIAMATA DA skills/list/tipo_abilita/nome_abilita/init
############

# Cerca bersagli da danneggiare
# Colui che cerca è il nome_abilita.finder, ricordatelo
$execute as @e[type=player,distance=..$(abilityRange)] \
    unless score @s teamID = @e[tag=$(abilityName).finder,limit=1,distance=..$(abilityRange),sort=nearest] teamID \
        run function skills:auxiliary/apply_damage \
            with entity @e[tag=$(abilityName).finder,distance=..$(abilityRange),sort=nearest,limit=1] data