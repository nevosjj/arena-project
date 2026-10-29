#################################################
## Chiamato da skills:list/utility/switch/tick ##
#################################################

# Conserva coordinate bersaglio
$execute at @e[type=player,limit=1,sort=nearest,tag=switch_target.$(ID)] run summon marker ~ ~1 ~ {Tags:["switch_teleport.marker.$(ID)"]}

# Feedback
playsound entity.enderman.teleport hostile @a ~ ~ ~ 2 1.25

# Teletrasporto
$tp @e[type=player,limit=1,sort=nearest,tag=switch_target.$(ID)] @e[type=player,limit=1,sort=nearest,tag=switch_user.$(ID)]
$tp @e[type=player,limit=1,sort=nearest,tag=switch_user.$(ID)] @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)]

# Pulizia
$tag @a[tag=switch_target.] remove switch_target.$(ID)
$tag @a[tag=switch_user.] remove switch_user.$(ID)
$kill @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)]
kill @s