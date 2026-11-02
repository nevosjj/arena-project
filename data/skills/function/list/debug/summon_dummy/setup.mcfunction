# DEBUG TEMPORANEO (Fase 3)
tag @s remove summon_dummy.new
scoreboard players set @s ID 0
execute store result score @s teamID run data get entity @s data.teamID
$function skills:auxiliary/summon/create {width:1.0,height:2.0,health:$(health)}

# Visual: armor stand per vedere la hitbox
summon armor_stand ~ ~ ~ {Tags:["summon.part","summon_dummy.visual"],NoGravity:1b,Invulnerable:1b,Marker:1b,ShowArms:1b,CustomName:{"text":"Bersaglio di prova","color":"red"},CustomNameVisible:1b}
tellraw @a[tag=debug] [{"text":">>> ","color":"red","bold":true},{"text":"summon_dummy creato","color":"gray","bold":false}]
