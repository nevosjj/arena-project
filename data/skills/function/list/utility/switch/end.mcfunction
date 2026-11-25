#################################################
## Chiamato da skills:list/utility/switch/tick ##
#################################################

# Conserva coordinate bersaglio
$execute at @a[limit=1,sort=nearest,tag=switch_target.$(ID)] run summon marker ~ ~1 ~ {Tags:["switch_teleport.marker.$(ID)"]}

# Feedback
playsound entity.enderman.teleport hostile @a ~ ~ ~ 2 1.25

# Stordimento: il bersaglio è ad almeno stunDistance blocchi dall'utente nel momento dello scambio
$execute as @a[limit=1,sort=nearest,tag=switch_target.$(ID)] at @s if entity @a[tag=switch_user.$(ID),distance=$(stunDistance)..] run tag @s add switch.stun_pending

# Teletrasporto
$execute as @a[limit=1,sort=nearest,tag=switch_target.$(ID)] at @a[limit=1,sort=nearest,tag=switch_user.$(ID)] run tp @s ~ ~ ~
$execute as @a[limit=1,sort=nearest,tag=switch_user.$(ID)] at @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)] run tp @s ~ ~ ~

# Applicazione stordimento (dopo il teletrasporto)
$execute as @a[tag=switch.stun_pending] at @s run function skills:list/utility/switch/stun {duration:$(duration)}

# Ricarica del caster
$execute as @a[tag=in_game,scores={ID=$(ID)},limit=1] run function skills:cooldowns/delayed/start {skillTYPE_txt:"utility",hotbarIndex:1}

# Pulizia
$tag @a[tag=switch_target.$(ID)] remove switch_target.$(ID)
$tag @a[tag=switch_user.$(ID)] remove switch_user.$(ID)
$kill @e[type=marker,limit=1,sort=nearest,tag=switch_teleport.marker.$(ID)]
kill @s