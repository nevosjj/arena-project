#################################################
## Chiamato da skills:list/utility/switch/tick ##
#################################################

# Conserva coordinate bersaglio
$execute at @e[type=player,limit=1,sort=nearest,tag=switch_target.$(ID)] run summon marker ~ ~1 ~ {Tags:["switch_teleport.marker.$(ID)"]}

# Feedback
playsound entity.enderman.teleport hostile @a ~ ~ ~ 2 1.25

# Teletrasporto
$execute as @e[type=player,limit=1,sort=nearest,tag=switch_target.$(ID)] at @e[type=player,limit=1,sort=nearest,tag=switch_user.$(ID)] run tp @s ~ ~ ~
$execute as @e[type=player,limit=1,sort=nearest,tag=switch_user.$(ID)] at @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)] run tp @s ~ ~ ~

# Pulizia
$tag @a[tag=switch_target.$(ID)] remove switch_target.$(ID)
$tag @a[tag=switch_user.$(ID)] remove switch_user.$(ID)
$kill @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)]
kill @s