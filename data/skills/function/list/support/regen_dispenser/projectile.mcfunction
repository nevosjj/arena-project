##############################################################################
## Chiamata da skills:list/support/regen_dispenser/shoot                    ##
## Esecutore: l'evocazione, ruotata verso il bersaglio | Macro: i suoi data ##
## Posizione: il centro del dispenser                                       ##
##############################################################################

# Evocazione
summon item ^ ^ ^0.4 {PickupDelay:32767,Invulnerable:1b,Tags:["projectile","summon.part","regen_dispenser.projectile","new.projectile"],Item:{id:"minecraft:golden_apple",count:1}}

# Dati dell'evocazione (power, distance, abilityName, ID, teamID...)
data modify entity @e[type=item,tag=new.projectile,distance=..1,limit=1] data set from entity @s data
# Per il proiettile "range" è il raggio di collisione (letto dal targeting in projectile_tick)
data modify entity @e[type=item,tag=new.projectile,distance=..1,limit=1] data.range set from entity @s data.projectileRange

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
playsound block.piston.extend player @a ~ ~ ~ 1.5 1.3
playsound minecraft:block.vault.insert_item player @a ~ ~ ~ 2 2

# Sbuffo di fumo bianco verso il bersaglio (scia lungo la direzione di sparo)
particle white_smoke ^ ^ ^0.4 0.03 0.03 0.03 0.01 3 force
particle white_smoke ^ ^ ^0.7 0.05 0.05 0.05 0.02 3 force
particle white_smoke ^ ^ ^1.0 0.08 0.08 0.08 0.03 3 force
particle white_smoke ^ ^ ^1.3 0.1 0.1 0.1 0.03 2 force
