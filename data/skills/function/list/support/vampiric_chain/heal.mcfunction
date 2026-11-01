#################################################################
## Chiamato da health:math/incoming_damage                     ##
## Cura l'utente di Catena Vampirica di una percentuale        ##
## (data.power) dei danni subiti dal bersaglio della catena    ##
## temp1 viene usato per il tick, quindi parte da temp2        ##
#################################################################

## Controllo
# Ciascun marker controlla se il proprio proprietario ha danni inflitti da trasferire, altrimenti ritorna
$execute unless score @e[type=player,limit=1,tag=vampiric_chain_target.$(ID)] incoming_damage matches 1.. run return fail

# Copia lo score danni in temp2
$scoreboard players operation @s temp2 = @e[type=player,limit=1,tag=vampiric_chain_target.$(ID)] incoming_damage

## Calcola
# Prepara
execute store result score @s temp3 run data get entity @s data.power
scoreboard players set @s temp4 100
# Calcola
scoreboard players operation @s temp2 *= @s temp3
scoreboard players operation @s temp2 /= @s temp4
# Controllo
execute if score @s temp2 matches 0 run scoreboard players set @s temp2 1

# Cura
$scoreboard players operation @e[type=player,limit=1,tag=vampiric_chain_user.$(ID)] incoming_heal += @s temp2
$execute as @e[type=player,limit=1,tag=vampiric_chain_user.$(ID)] run function health:math/incoming_heal {name:"$(name)",playerName:"$(playerName)"}

# Feedback
playsound entity.skeleton_horse.ambient player @a ~ ~ ~ 2 2
playsound minecraft:block.chain.fall player @a ~ ~ ~ 2 0.8
$execute at @e[type=player,limit=1,tag=vampiric_chain_user.$(ID)] run particle dust{color:[0.1,0.7,0.25],scale:0.8} ~ ~1 ~ 0.35 0.7 0.35 0 25 force

# Reset
scoreboard players reset @s temp2
scoreboard players reset @s temp3
scoreboard players reset @s temp4