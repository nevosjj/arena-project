# Applicazione danno
$scoreboard players add @s incoming_heal $(power)

# Inserimento origine danno (giocatore)
$function health:math/incoming_heal with entity @e[tag=$(abilityName).finder,distance=..$(range),sort=nearest,limit=1] data

# Effetti legati alle abilità (insieme ai visual)
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/heal_consequence with entity @e[tag=$(abilityName).finder,distance=..$(range),sort=nearest,limit=1] data