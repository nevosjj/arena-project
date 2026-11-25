#################################################################
## Chiamato da health:math/incoming_damage                     ##
## Cura l'utente di Catena Vampirica di una percentuale        ##
## (data.power) dei danni subiti dal bersaglio della catena    ##
## temp1 viene usato per il tick, quindi parte da temp2        ##
#################################################################

## Controllo
# Ciascun marker controlla se il proprio proprietario ha danni inflitti da trasferire, altrimenti ritorna
$execute unless score @a[limit=1,tag=vampiric_chain_target.$(ID)] incoming_damage matches 1.. run return fail

## Calcola
# Cura = max(1, danni del bersaglio * power / 100)
    # "this" del provider score è l'esecutore: si esegue come il bersaglio, ma il risultato va nel marker (@s risolto prima di "as")
$execute store result score @s temp2 as @a[limit=1,tag=vampiric_chain_target.$(ID)] run compute entity @s integer {type:"minecraft:max",inputs:[1,{type:"minecraft:div",left:{type:"minecraft:mul",inputs:[{type:"minecraft:score",score:"incoming_damage",target:{type:"context",target:"this"},fallback:0},$(power)]},right:100}]}

# Cura
$scoreboard players operation @a[limit=1,tag=vampiric_chain_user.$(ID)] incoming_heal += @s temp2
$execute as @a[limit=1,tag=vampiric_chain_user.$(ID)] run function health:math/incoming_heal {name:"$(name)",playerName:"$(playerName)"}

# Feedback
playsound entity.skeleton_horse.ambient player @a ~ ~ ~ 2 2
playsound minecraft:block.chain.fall player @a ~ ~ ~ 2 0.8
$execute at @a[limit=1,tag=vampiric_chain_user.$(ID)] run particle dust{color:[0.1,0.7,0.25],scale:0.8} ~ ~1 ~ 0.35 0.7 0.35 0 25 force

# Reset
scoreboard players reset @s temp2