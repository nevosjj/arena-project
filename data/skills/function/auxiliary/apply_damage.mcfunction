# Applicazione danno
$scoreboard players add @s ability_damage $(abilityPower)

# Inserimento origine danno (giocatore)
$function health:ability_damage with entity @e[tag=$(abilityName).finder,distance=..$(abilityRange),sort=nearest,limit=1] data

# Effetti legati alle abilità (insieme ai visual)
$execute at @s run function skills:list/$(abilityType)/$(abilityName)/damage_consequence with entity @e[tag=$(abilityName).finder,distance=..$(abilityRange),sort=nearest,limit=1] data