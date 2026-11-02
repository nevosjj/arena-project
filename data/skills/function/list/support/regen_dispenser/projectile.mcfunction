###########################################################
## Chiamata da skills:list/support/regen_dispenser/shoot ##
## Esecutore: il cervello, ruotato verso il bersaglio    ##
## Posizione: il cervello | Macro: i suoi data           ##
###########################################################

# Evocazione
summon item ^ ^ ^0.4 {PickupDelay:32767,Invulnerable:1b,Tags:["projectile","summon.part","regen_dispenser.projectile","new.projectile"],Item:{id:"minecraft:golden_apple",count:1}}

# Dati del cervello (power, range, distance, abilityName, ID, teamID...)
data modify entity @e[type=item,tag=new.projectile,distance=..1,limit=1] data set from entity @s data

# Item casuale: mela d'oro (1), carota d'oro (2), pozione splash di guarigione (3)
execute as @e[type=item,tag=new.projectile,distance=..1,limit=1] store result score @s temp run random value 1..3
execute as @e[type=item,tag=new.projectile,distance=..1,limit=1] if score @s temp matches 2 run item replace entity @s contents with golden_carrot
execute as @e[type=item,tag=new.projectile,distance=..1,limit=1] if score @s temp matches 3 run item replace entity @s contents with splash_potion[potion_contents={potion:"minecraft:healing"}]

# Movimento (la rotazione verso il bersaglio arriva dal facing)
$execute as @e[type=item,tag=new.projectile,distance=..1,limit=1] positioned as @s run function skills:auxiliary/set_motion {motion:$(motion)}

# Pronto (temp = tick di vita)
scoreboard players set @e[type=item,tag=new.projectile,distance=..1,limit=1] temp 0
tag @e[type=item,tag=new.projectile,distance=..1] remove new.projectile

# Feedback
playsound block.dispenser.launch player @a ~ ~ ~ 1.5 1.3
particle happy_villager ^ ^ ^0.4 0.1 0.1 0.1 0 3 force
