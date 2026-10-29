## Offensive
# No energia
execute if score @s antispam.offensive matches 1.. run scoreboard players remove @s antispam.offensive 1
# Tra un uso e l'altro
execute if score @s cooldown.offensive matches 1.. run scoreboard players remove @s cooldown.offensive 1

## Utility
execute if score @s antispam.utility matches 1.. run scoreboard players remove @s antispam.utility 1

## Support
execute if score @s antispam.support matches 1.. run scoreboard players remove @s antispam.support 1

## Ultimate
execute if score @s antispam.ultimate matches 1.. run scoreboard players remove @s antispam.ultimate 1

## Nessun bersaglio (tutti i tipi)
execute if score @s antispam_target.offensive matches 1.. run scoreboard players remove @s antispam_target.offensive 1
execute if score @s antispam_target.utility matches 1.. run scoreboard players remove @s antispam_target.utility 1
execute if score @s antispam_target.support matches 1.. run scoreboard players remove @s antispam_target.support 1
execute if score @s antispam_target.ultimate matches 1.. run scoreboard players remove @s antispam_target.ultimate 1