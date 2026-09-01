# Applicazione danno
$scoreboard players add @s ability_damage $(power)

# Inserimento origine danno (giocatore)
$function health:types/ability_damage with entity @e[tag=$(abilityName).finder,distance=..$(range),sort=nearest,limit=1] data

# Effetti legati alle abilità (insieme ai visual)
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/damage_consequence with entity @e[tag=$(abilityName).finder,distance=..$(range),sort=nearest,limit=1] data